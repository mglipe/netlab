package br.com.system.util;

public class Extenso {
	  /**  Description of the Field */
	  private double num; //The number that is going to be converted
	  /**  Description of the Field */
	  private String s; //The String that is going to be returned
	  /**  Description of the Field */
	  private int maxlen; //our result string's wrap limit..
	  /**  Description of the Field */
	  private int cut_point;
	  /**  Description of the Field */
	  private boolean centavo = false;

	  //Constructors
	  /**Construtor para o objeto Extenso */
	  public Extenso() { }

	  /**
	   *Construtor para o objeto Extenso
	   *
	   * @param  num_     Description of the Parameter
	   * @param  maxlen_  Description of the Parameter
	   */
	  public Extenso(double num_, int maxlen_) {
	    setNumber(num_, maxlen_);
	  }

	  /**
	   * To set the number to be converted
	   *
	   * @param  num_     Description of the Parameter
	   * @param  maxlen_  Description of the Parameter
	   */
	  public void setNumber(double num_, int maxlen_) {
	    num = num_;
	    s = new String();
	    maxlen = maxlen_;
	    Extenso();
	  }

	  /** The function that makes the convertion */
	  private void Extenso() {

	    String nome[] = {
	        "um bi-lhão",
	        " bi-lhões",
	        "um mi-lhão",
	        " mi-lhões"};
	    Long n = (long)num;
	    long mil_milhoes;
	    long milhoes;
	    long milhares;
	    long unidades;
	    long centavos;
	    char numero[];
	    double frac = num - n;
	    int nl;
	    int rp;
	    int last;
	    int p;
	    int len;
	    if (num == 0) {
	      s += "zero";
	      return;
	    }
	    mil_milhoes = (n - n % 1000000000) / 1000000000;
	    n -= mil_milhoes * 1000000000;
	    milhoes = (n - n % 1000000) / 1000000;
	    n -= milhoes * 1000000;
	    milhares = (n - n % 1000) / 1000;
	    n -= milhares * 1000;
	    unidades = n;
	    centavos = (long)(frac * 100);
	    if ((long)(frac * 1000 % 10) > 5) {
	      centavos++;
	    }
//	                      s = "\0";
	    //s[0] = '\0' ; //??
	    if (mil_milhoes > 0) {
	      if (mil_milhoes == 1) {
	        s += nome[0];
	      } else {
	        s += numero(mil_milhoes);
	        s += nome[1];
	      }
	      if ((unidades == 0) && ((milhares == 0) && (milhoes > 0))) {
	        s += " e ";
	      } else if ((unidades != 0) || ((milhares != 0) || (milhoes != 0))) {
	        s += ", ";
	      }
	    }
	    if (milhoes > 0) {
	      if (milhoes == 1) {
	        s += nome[2];
	      } else {
	        s += numero(milhoes);
	        s += nome[3];
	      }
	      if ((unidades == 0) && (milhares > 0)) {
	        s += " e ";
	      } else if ((unidades != 0) || (milhares != 0)) {
	        s += ", ";
	      }
	    }
	    if (milhares > 0) {
	      if (milhares != 1) {
	        s += numero(milhares);
	      }
	      s += " mil";
	      if (unidades > 0) {
	        if ((milhares > 100) && (unidades > 100)) {
	          s += ", ";
	        } else if (((unidades % 100) != 0) || ((unidades % 100 == 0) &&
	(milhares < 10))) {
	          s += " e ";
	        } else {
	          s += " ";
	        }
	      }
	    }
	    s += numero(unidades);
	    if (num > 0) {
	      s += ((long)num == 1L) ? " Hora" : " Horas";
	    }
	    if (centavos != 0) {
	      if (n != 0) {
	        centavo = true;
	      }
	      s += " e ";
	      s += numero(centavos);
	      s += (centavos==1) ? " cen-ta-vo" : " cen-ta-vos";
	    }

	    len = s.length();
	    StringBuffer sar = new StringBuffer(s);
	    StringBuffer l = new StringBuffer();
	    last = 0;
	    rp = 0;
	    nl = 1;

	    for (p = 0; p < len; ++p) {
	      if (sar.charAt(p) != '-') {
	        rp++;
	      }
	      if (rp > maxlen) {
	        if (sar.charAt(last) == ' ') {
	          sar.replace(last, last + 1, "\n");
	        } else {
	          sar.insert(last + 1, '\n');
	        }
	        rp -= maxlen;
	        nl++;
	      }
	      if ((sar.charAt(p) == ' ') || (sar.charAt(p) == '-')) {
	        last = p;
	      }
	    } //for
	    rp = 0;
	    len = sar.length();

	    for (p = 0; p < len; ++p) {
	      if (!((sar.charAt(p) == '-') && (sar.charAt(p + 1) != '\n'))) {
	        l.insert(rp++, sar.charAt(p));
	      }
	    } //for

	    s = l.toString();
	  }

	  /**
	   * Return the written form of the number
	   *
	   * @return    ...
	   */
	  public String getResult() {
	    String temp;
	    if (s == null) {
	      return "Number is not set!";
	    }
	    temp = s;
	    s = null;
	    return temp.toUpperCase();
	  }


	  /**
	   * Return the numbers between 0-999 in written form
	   *
	   * @param  n  Description of the Parameter
	   * @return    ...
	   */
	  private String numero(long n) {
	    int flag;
	    String u[] = {"", "uma", "duas", "três", "qua-tro", "cin-co", "seis",
	"se-te", "oi-to", "no-ve", "dez", "on-ze", "do-ze", "tre-ze", "qua-tor-ze",
	"quin-ze", "de-zes-seis", "de-zes-sete", "de-zoi-to", "de-ze-no-ve"};
	    String d[] = {"", "", "vin-te", "trin-ta", "qua-ren-ta", "cin-quen-ta",
	"ses-sen-ta", "se-ten-ta", "oi-ten-ta", "no-ven-ta"};
	    String c[] = {"", "cen-to", "du-zen-tas", "tre-zen-tas",
	"qua-tro-cen-tas", "qui-nhen-tas", "seis-cen-tas", "se-te-cen-tas",
	"oi-to-cen-tas", "no-ve-cen-tas"};
	    String extenso_do_numero = new String();
//	                      extenso_do_numero  = "\0" ;
	    if ((n < 1000) && (n != 0)) {
	      if (n == 100) {
	        extenso_do_numero = "cem";
	      } else {
	        if (n > 99) {
	          extenso_do_numero += c[(int)(n / 100)];
	          if (n % 100 > 0) {
	            extenso_do_numero += " e ";
	          }
	        }
	        if (n % 100 < 20) {
	          extenso_do_numero += u[(int)n % 100];
	        } else {
	          extenso_do_numero += d[((int)n % 100) / 10];
	          if ((n % 10 > 0) && (n > 10)) {
	            extenso_do_numero += " e ";
	            extenso_do_numero += u[(int)n % 10];
	          }
	        }
	      }
	    } else if (n > 999) {
	      extenso_do_numero = "<<ERRO: NUMERO > 999>>";
	    }
	    return extenso_do_numero;
	  }
	  
	  public static void main(String[] args) {
	    StringBuffer sb = new StringBuffer();
	    double nn = 999999999999.99D;

	    if (args.length > 0) {
	      try {
	        nn = Double.parseDouble(args[0]);
	      } catch (NumberFormatException e) {
	        System.out.println("Use java Extenso [número com '.' decimal]");
	        System.exit(1);
	      }
	    }

	    Extenso ex = new Extenso(nn, 30);

	    sb.append(String.valueOf(nn)).append(" = \r\n");
	    sb.append(ex.getResult());
	    System.out.println(sb);

	  }
	}


	

  


	

