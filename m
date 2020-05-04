Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 565B91C48B7
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 May 2020 23:02:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=orVTaoqgtMKYejmfUjKnnj9OlnDXqIlG4bqGXhW6dB4=; b=LxQlqsGnY8SG22Nm9PYHunBe5
	GttOJeqIvW5cJzeaYZotQbtgips1nrn7td7CsQJKjzwX7ggzKrzgtY2xIMvPuvwKQFF9nadd+/pQO
	T+bOfQH9Ymdv6+/erQMy27NuaQTccPNnGb6n/J0HPJ/iSZKf6R+sOdJpG02bsoY2eiaDJ75a5K0Av
	uFrkMJTVcAtVQgpwfH8Lx/AmnWhWRPZX4U+XxoupGiHNIqs7oF8Rtng8+odoya5aBOejqAtPWUf4f
	RaHQNaqAnwue1RBTZwOyARIJsk+MqRMRCzScJ+2b2KTDzOfPAEmpf56iHTURsG9dWzK2QFIhvdijg
	Aoc9vschg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jViEY-0001OM-SM; Mon, 04 May 2020 21:02:38 +0000
Received: from mail-qv1-xf35.google.com ([2607:f8b0:4864:20::f35])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jViER-0001Mx-RD
 for openwrt-devel@lists.openwrt.org; Mon, 04 May 2020 21:02:33 +0000
Received: by mail-qv1-xf35.google.com with SMTP id v10so412733qvr.2
 for <openwrt-devel@lists.openwrt.org>; Mon, 04 May 2020 14:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language;
 bh=L6EGAWykNr0WRfyy6gPUF0dAPNjLg/DCQ3pleDWaEPk=;
 b=F3QEIOUQm/be29VesikJQP3UTlT3z1YKJHhaqPBUAK1Om3s2ZCqFwQ9duGOABdg0by
 ZDJYXd/NdYkPmrc3Ys/0Yx5puElVq+7rx/p9ju0VEKAoyUn9ctWymJAxzpI3rj6enZ7q
 MWYrxDC2h0dvmh3xGQkSAtqL31uvivvuybV0WfsJxV2G0a3GxNXP8uQ0MUihWAU+zn3x
 Emw73kT0bSpUo0jOsdPmv5wWhGzFIzgxZC7DDhnw39kaSd1088+Dp2HYBumY6MVl8rJX
 /4IkyAhWW/rxTkaUwYrGpSHZZuNMn8KDXLwQHqRbAj3YI2J6Smkm8ker7C3o2njUD/DO
 UffQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=L6EGAWykNr0WRfyy6gPUF0dAPNjLg/DCQ3pleDWaEPk=;
 b=pp5r6MYL8EE1uI8naLEsc949i8maG5yKq5u9OoZ9xSxngM6gqu/N1NfZpErzKsIGWC
 8te8J2k3uO+3W85/J6AS+Vu5OLAkQTiAOW56oUA/51SloYqlhNKXFWwxekx/iDyTFWC9
 0lYa+iR0awEDDipYsvTtALmxe6gLrHM7FH6AlZyPykXEjzA98RIqvPbuNMoiJcg/1KfZ
 PxFI5fFiJT2Nd4zcFInjpQhIoAPV0/dTQ1K4Lrk8CqUb6KivEwVoTCarf4uN0xNGK/3b
 itM1lAMR49kx7DuID80g6wDvAUqJYmOyRuoc0z8e4uDnzROmOM/RdCSXUAubbYyXVVdO
 BqcQ==
X-Gm-Message-State: AGi0PuZunPpn6CKzKFqD6NkU/7XYdE6mv3pMHlY4QCwhdNMR7nFFX6ND
 1Lca67YCsYdOov/Co1pq4y3KD/TSIR4=
X-Google-Smtp-Source: APiQypIc18eNUb80L8A1UdDJtLd9d01IfJSQI+JHKJY2AyvsBTUpqPjA2YZk+U8mJnCpwn8OMad1JA==
X-Received: by 2002:ad4:548b:: with SMTP id q11mr2821qvy.129.1588626149560;
 Mon, 04 May 2020 14:02:29 -0700 (PDT)
Received: from ?IPv6:2804:368:9:8000:6514:6223:d839:f6b3?
 ([2804:368:9:8000:6514:6223:d839:f6b3])
 by smtp.gmail.com with ESMTPSA id j16sm152991qkl.118.2020.05.04.14.02.27
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 May 2020 14:02:28 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <CABH8e0+-TaVCT7AvHRYyemTuzhx=BbNN1BaZPJQj6OJ6KJwM5A@mail.gmail.com>
 <CAKiAkGQg-Hiqw6isSmJYyLRWrTOpE0BZm4m+DPJPXBcNbiZCJw@mail.gmail.com>
From: Fernando Frediani <fhfrediani@gmail.com>
Message-ID: <8148b3ca-2eba-f833-8d0d-d158559edd79@gmail.com>
Date: Mon, 4 May 2020 18:02:26 -0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAKiAkGQg-Hiqw6isSmJYyLRWrTOpE0BZm4m+DPJPXBcNbiZCJw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_140231_907320_B811FE1A 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f35 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [fhfrediani[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.0 FREEMAIL_REPLY         From and body contain different freemails
Subject: Re: [OpenWrt-Devel] FULL CONE NAT in OpenWrt
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0340832495879099229=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============0340832495879099229==
Content-Type: multipart/alternative;
 boundary="------------4CFED85EAD5BB7C981E62F96"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------4CFED85EAD5BB7C981E62F96
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

I believe NAT66 should not be stimulated in any sense.
One of the greatest things of IPv6 is to restore end to end communication.

PDs should only change when there is a re-connection and the CPE should 
be able able to handle that correctly updating its LAN prefixes accordingly.
Stimulating and making that easy for general usage is like a crime 
against IPv6. If one really needs to use that "chewing gun" he must know 
what he is doing and to manually for that exception case.

Regards
Fernando

On 04/05/2020 17:52, Joel Wirāmu Pauling wrote:
> I am all for exposing Cone Nat in UCI / Firewall zones as an option to 
> the masquerading configuration in a zone.
>
> Also as much as I hate it nat66 for IPv6 needs to be exposed in the 
> same place - specifically for mapping routable PD which change often 
> to ULA's.
>
> -Joel
>
> On Tue, 5 May 2020 at 07:25, Gracias Amigou <puchapapa01@gmail.com 
> <mailto:puchapapa01@gmail.com>> wrote:
>
>     Please add this package as official:
>
>     *Posts:*
>
>      1. xt_FULLCONENAT -- Implementing RFC 3489 full cone SNAT in
>         OpenWrt
>         <https://forum.openwrt.org/t/xt-fullconenat-implementing-rfc-3489-full-cone-snat-in-openwrt/14816>
>      2. [12/8更新]OpenWrt 上实现 NAT1 (Full cone NAT) 的方法，无需
>         DMZ/UPnP - OPENWRT专版
>         <https://www.right.com.cn/forum/thread-319827-1-1.html>
>      3. 从DNAT到netfilter内核子系统，浅谈Linux的Full Cone NAT实现 |
>         ChionLab
>         <https://blog.chionlab.moe/2018/02/09/full-cone-nat-with-linux/>
>
>     *
>     *
>     *Git:*
>     • GitHub - LGA1150/openwrt-fullconenat: Netfilter and iptables
>     extension for full cone NAT ported to OpenWrt.
>     <https://github.com/LGA1150/openwrt-fullconenat>
>     _______________________________________________
>     openwrt-devel mailing list
>     openwrt-devel@lists.openwrt.org
>     <mailto:openwrt-devel@lists.openwrt.org>
>     https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--------------4CFED85EAD5BB7C981E62F96
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>I believe NAT66 should not be stimulated in any sense.<br>
      One of the greatest things of IPv6 is to restore end to end
      communication.</p>
    <p>PDs should only change when there is a re-connection and the CPE
      should be able able to handle that correctly updating its LAN
      prefixes accordingly.<br>
      Stimulating and making that easy for general usage is like a crime
      against IPv6. If one really needs to use that "chewing gun" he
      must know what he is doing and to manually for that exception
      case.</p>
    <p>Regards<br>
      Fernando<br>
    </p>
    <div class="moz-cite-prefix">On 04/05/2020 17:52, Joel Wirāmu
      Pauling wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAKiAkGQg-Hiqw6isSmJYyLRWrTOpE0BZm4m+DPJPXBcNbiZCJw@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div class="gmail_default"
          style="font-family:verdana,sans-serif">I am all for exposing
          Cone Nat in UCI / Firewall zones as an option to the
          masquerading configuration in a zone.</div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif"><br>
        </div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif">Also as much as I hate
          it nat66 for IPv6 needs to be exposed in the same place -
          specifically for mapping routable PD which change often to
          ULA's. <br>
        </div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif"><br>
        </div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif">-Joel<br>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Tue, 5 May 2020 at 07:25,
          Gracias Amigou &lt;<a href="mailto:puchapapa01@gmail.com"
            moz-do-not-send="true">puchapapa01@gmail.com</a>&gt; wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="ltr">Please add this package as official:<br>
            <div><br>
            </div>
            <div><b>Posts:</b></div>
            <div>
              <ol>
                <li><a
href="https://forum.openwrt.org/t/xt-fullconenat-implementing-rfc-3489-full-cone-snat-in-openwrt/14816"
                    target="_blank" moz-do-not-send="true">xt_FULLCONENAT
                    -- Implementing RFC 3489 full cone SNAT in OpenWrt</a></li>
                <li><a
                    href="https://www.right.com.cn/forum/thread-319827-1-1.html"
                    target="_blank" moz-do-not-send="true">[12/8更新]OpenWrt
                    上实现 NAT1 (Full cone NAT) 的方法，无需 DMZ/UPnP - OPENWRT专版</a></li>
                <li><a
                    href="https://blog.chionlab.moe/2018/02/09/full-cone-nat-with-linux/"
                    target="_blank" moz-do-not-send="true">从DNAT到netfilter内核子系统，浅谈Linux的Full
                    Cone NAT实现 | ChionLab</a></li>
              </ol>
            </div>
            <div><b><br>
              </b></div>
            <div><b>Git:</b><br>
            </div>
            <div>• <a
                href="https://github.com/LGA1150/openwrt-fullconenat"
                target="_blank" moz-do-not-send="true">GitHub -
                LGA1150/openwrt-fullconenat: Netfilter and iptables
                extension for full cone NAT ported to OpenWrt.</a><br>
            </div>
          </div>
          _______________________________________________<br>
          openwrt-devel mailing list<br>
          <a href="mailto:openwrt-devel@lists.openwrt.org"
            target="_blank" moz-do-not-send="true">openwrt-devel@lists.openwrt.org</a><br>
          <a
            href="https://lists.openwrt.org/mailman/listinfo/openwrt-devel"
            rel="noreferrer" target="_blank" moz-do-not-send="true">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a><br>
        </blockquote>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
openwrt-devel mailing list
<a class="moz-txt-link-abbreviated" href="mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@lists.openwrt.org</a>
<a class="moz-txt-link-freetext" href="https://lists.openwrt.org/mailman/listinfo/openwrt-devel">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a>
</pre>
    </blockquote>
  </body>
</html>

--------------4CFED85EAD5BB7C981E62F96--


--===============0340832495879099229==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0340832495879099229==--

