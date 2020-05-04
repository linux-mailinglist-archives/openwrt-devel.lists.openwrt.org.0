Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4421C4952
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 May 2020 00:01:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K1DGBp2Yb6uEW/S8q3tXtZX5t6G3xZt2ZxZarlNpvN8=; b=S5mCotF2Ev2gdeqeRkGHHOuOd
	z6A0Apl7RawXZnF5qN1cffG24OcdNa0+Y1baVaV4grr2g4/jeg3bQ+YtY3KPB0LeuMLi7rqYozvNH
	qTbVa5X/OnWDTD+Qw6Qh8V9MTyEDokLlJzwBKNd0RJX3yZZWYOE9BCA2Fgaz3aCWfRaVee9O+dj+g
	419jBEslH7k4cUM7fq/48FUOd9ngbdEU4Wfa8Bivez2KJzRbYrK1RQFibM4U2clRgw1rcnsBUGH35
	Qz5D14xlDdaJW3jAq9YjGRzNwi5S+33FMzwDrhsHTVOV80EgrJlfn8KOTYvclhVyrpXgxBPf7peUM
	tOz6g+TBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVj8x-0001mq-9n; Mon, 04 May 2020 22:00:55 +0000
Received: from mail-ua1-x933.google.com ([2607:f8b0:4864:20::933])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVj8h-0001lD-Ma
 for openwrt-devel@lists.openwrt.org; Mon, 04 May 2020 22:00:45 +0000
Received: by mail-ua1-x933.google.com with SMTP id t8so451849uap.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 04 May 2020 15:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aenertia.net; s=dkimaenertianet;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6hGI62IolpXP0JJhQx6iZ40JFKdiYL/exlb6jMbPLNk=;
 b=SMyfgknu6Zf/qe8vSVceZCEltaYC0DYhRNJSSMmo/XFEx/lk27KN6IOedmGwa//BYj
 KiOAeWaLizvgFCXkEU840UL770xv7iPhUeNuznBC++nzy7jAj/hnVzNbm139r0GpvoDK
 IVOS4jnaYaIeMZ49cMW7he2wN8D1mKvYkHrkU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6hGI62IolpXP0JJhQx6iZ40JFKdiYL/exlb6jMbPLNk=;
 b=qyaSqtK4IQHwxxISYvQ2tXAP5wVL7WKv00bfuqR8/F+h9Awh+OvjVc83mvMXtHFy7f
 PXX5s8lwtbIFbZhapS8PDZlM3WGLzn7PRyG5VJqAmMYMD/I+/d19w3jrqL8DaJzBj4Zu
 uNq/tgwTYH4hAGGPDLL9IKUiN/FXnAkZuRsLoJeNRVJrRvF7tVCxNPCessOIR3JOwiP7
 6UgvMA9fzmBqHn/sHDjK5yWxTjPx8sjJTSGo2oPS1Wno4icrBFq2Z6yNK0JXeOHKOeXr
 Mdb7vWJvwrX9MJXerkYAsWt6RHvW+uapuK6oAL5DgoZonl/qpkUluGAHET4w53NINUpw
 ybzQ==
X-Gm-Message-State: AGi0PuajXluPIwrf/nzlLMMW3NToKLBD+GuyQ0pDPRlNUmB2uFcgM3b3
 dJbX9mxj7Y4GVq+/OhX4w63VFFaK2Mp/mCuJZpriuwNS
X-Google-Smtp-Source: APiQypLdwphkx0U/DwIIAktRRx3sBGJDSFPZq2nUO6xpx6JShuQmv7WVDFGcWzE9Q62f8hFaKknMD5bD9ggzEwWRn6A=
X-Received: by 2002:ab0:330e:: with SMTP id r14mr1093623uao.68.1588629635152; 
 Mon, 04 May 2020 15:00:35 -0700 (PDT)
MIME-Version: 1.0
References: <CABH8e0+-TaVCT7AvHRYyemTuzhx=BbNN1BaZPJQj6OJ6KJwM5A@mail.gmail.com>
 <CAKiAkGQg-Hiqw6isSmJYyLRWrTOpE0BZm4m+DPJPXBcNbiZCJw@mail.gmail.com>
 <8148b3ca-2eba-f833-8d0d-d158559edd79@gmail.com>
In-Reply-To: <8148b3ca-2eba-f833-8d0d-d158559edd79@gmail.com>
From: =?UTF-8?Q?Joel_Wir=C4=81mu_Pauling?= <joel@aenertia.net>
Date: Tue, 5 May 2020 10:00:23 +1200
Message-ID: <CAKiAkGS8Guy7Xfc+YqKZ6h4Y9+G44ACp8MZ25dxTBWUfcWAWcg@mail.gmail.com>
To: Fernando Frediani <fhfrediani@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_150039_895500_155E775E 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:933 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============6086606562589051045=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6086606562589051045==
Content-Type: multipart/alternative; boundary="000000000000155a8f05a4d9a9a3"

--000000000000155a8f05a4d9a9a3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yup; ok i'm not going to get into a religious war about this. But I will
fight you on this and I have been around long enough to have been on the
other side of the fence and am talking from a position of understanding
it's not a great place we are in to need it. But we do:

There are multiple use-cases for nat66. Here is the one that I have now
encountered several times, and which I believe likely affects a large chunk
of users.

Uplink ISP provides /56 PD via /128 PtP link-net using public ranges
(normal so-far for dhcpv6 setup).
Uplink ISP provides /32 v4 IP via dhcp
End user requests static v4 ; ISP front end systems cope with this.
Despite requesting static addressing the v6 /56 PD does not honor this
(there is an v6 update flag for this, but it's kind of useless if you still
have to renumber all your internal sub-subnets when this happens).
--
So every reboot/timeout of the v6 upstream - potentially 1000's of
endpoints internally all need to update their prefixes (suffixes are
relatively easy to maintain...)
--
ULA solves this for consistent internal addressing, BUT does not solve it
for Firewall rules for say things like Video Conference
bridges/webservers/FIP/OpenStack pools/OpenShift exist routes, etc ,etc.
That may be exposed via port-forwarding and Forwarding rules in the
Routers/Edge firewall in Openwrt in combination with some $othernondhcpv6
aware config.

NAT66 + ULA would solve for the above case. You still have the issue of
needing to update all the DNS records but that is largely accomplishable
via the same way DDNS for v4 is.


---
So yup provide me with a better way to cope with the above that does not
need tunnels or require a provider uplink have static v6 allocations and I
will wholeheartedly agree nat66 is not needed.

-Joel

IPv6 PD /56 is delivered from Uplink RSP (retail service provider); MANY
ISP's cannot and do-not allow for their PD announcements (via dhcpv6) to be
statically set, even when their ipv4 addressing

On Tue, 5 May 2020 at 09:02, Fernando Frediani <fhfrediani@gmail.com> wrote=
:

> I believe NAT66 should not be stimulated in any sense.
> One of the greatest things of IPv6 is to restore end to end communication=
.
>
> PDs should only change when there is a re-connection and the CPE should b=
e
> able able to handle that correctly updating its LAN prefixes accordingly.
> Stimulating and making that easy for general usage is like a crime agains=
t
> IPv6. If one really needs to use that "chewing gun" he must know what he =
is
> doing and to manually for that exception case.
>
> Regards
> Fernando
> On 04/05/2020 17:52, Joel Wir=C4=81mu Pauling wrote:
>
> I am all for exposing Cone Nat in UCI / Firewall zones as an option to th=
e
> masquerading configuration in a zone.
>
> Also as much as I hate it nat66 for IPv6 needs to be exposed in the same
> place - specifically for mapping routable PD which change often to ULA's.
>
> -Joel
>
> On Tue, 5 May 2020 at 07:25, Gracias Amigou <puchapapa01@gmail.com> wrote=
:
>
>> Please add this package as official:
>>
>> *Posts:*
>>
>>    1. xt_FULLCONENAT -- Implementing RFC 3489 full cone SNAT in OpenWrt
>>    <https://forum.openwrt.org/t/xt-fullconenat-implementing-rfc-3489-ful=
l-cone-snat-in-openwrt/14816>
>>    2. [12/8=E6=9B=B4=E6=96=B0]OpenWrt =E4=B8=8A=E5=AE=9E=E7=8E=B0 NAT1 (=
Full cone NAT) =E7=9A=84=E6=96=B9=E6=B3=95=EF=BC=8C=E6=97=A0=E9=9C=80 DMZ/U=
PnP -
>>    OPENWRT=E4=B8=93=E7=89=88 <https://www.right.com.cn/forum/thread-3198=
27-1-1.html>
>>    3. =E4=BB=8EDNAT=E5=88=B0netfilter=E5=86=85=E6=A0=B8=E5=AD=90=E7=B3=
=BB=E7=BB=9F=EF=BC=8C=E6=B5=85=E8=B0=88Linux=E7=9A=84Full Cone NAT=E5=AE=9E=
=E7=8E=B0 | ChionLab
>>    <https://blog.chionlab.moe/2018/02/09/full-cone-nat-with-linux/>
>>
>>
>> *Git:*
>> =E2=80=A2 GitHub - LGA1150/openwrt-fullconenat: Netfilter and iptables e=
xtension
>> for full cone NAT ported to OpenWrt.
>> <https://github.com/LGA1150/openwrt-fullconenat>
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>
>
> _______________________________________________
> openwrt-devel mailing listopenwrt-devel@lists.openwrt.orghttps://lists.op=
enwrt.org/mailman/listinfo/openwrt-devel
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--000000000000155a8f05a4d9a9a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Yup; ok i&#39;m not going to get into a religious war about thi=
s. But I will fight you on this and I have been around long enough to have =
been on the other side of the fence and am talking from a position of under=
standing it&#39;s not a great place we are in to need it. But we do:</div><=
div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></=
div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">T=
here are multiple use-cases for nat66. Here is the one that I have now enco=
untered several times, and which I believe likely affects a large chunk of =
users. <br></div><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:ver=
dana,sans-serif">Uplink ISP provides /56 PD via /128 PtP link-net using pub=
lic ranges (normal so-far for dhcpv6 setup).</div><div class=3D"gmail_defau=
lt" style=3D"font-family:verdana,sans-serif">Uplink ISP provides /32 v4 IP =
via dhcp</div><div class=3D"gmail_default" style=3D"font-family:verdana,san=
s-serif">End user requests static v4 ; ISP front end systems cope with this=
. <br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-=
serif">Despite requesting static addressing the v6 /56 PD does not honor th=
is (there is an v6 update flag for this, but it&#39;s kind of useless if yo=
u still have to renumber all your internal sub-subnets when this happens).<=
/div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">=
--</div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f">So every reboot/timeout of the v6 upstream - potentially 1000&#39;s of e=
ndpoints internally all need to update their prefixes (suffixes are relativ=
ely easy to maintain...)</div><div class=3D"gmail_default" style=3D"font-fa=
mily:verdana,sans-serif">--</div><div class=3D"gmail_default" style=3D"font=
-family:verdana,sans-serif">ULA solves this for consistent internal address=
ing, BUT does not solve it for Firewall rules for say things like Video Con=
ference bridges/webservers/FIP/OpenStack pools/OpenShift exist routes, etc =
,etc. That may be exposed via port-forwarding and Forwarding rules in the R=
outers/Edge firewall in Openwrt in combination with some $othernondhcpv6 aw=
are config.<br></div><div class=3D"gmail_default" style=3D"font-family:verd=
ana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family=
:verdana,sans-serif">NAT66 + ULA would solve for the above case. You still =
have the issue of needing to update all the DNS records but that is largely=
 accomplishable via the same way DDNS for v4 is. <br></div><div class=3D"gm=
ail_default" style=3D"font-family:verdana,sans-serif"><br></div><div class=
=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div><div =
class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">---</div><=
div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">So yup=
 provide me with a better way to cope with the above that does not need tun=
nels or require a provider uplink have static v6 allocations and I will who=
leheartedly agree nat66 is not needed.<br></div><div class=3D"gmail_default=
" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_de=
fault" style=3D"font-family:verdana,sans-serif">-Joel<br></div><div class=
=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div><div =
class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">IPv6 PD /5=
6 is delivered from Uplink RSP (retail service provider); MANY ISP&#39;s ca=
nnot and do-not allow for their PD announcements (via dhcpv6) to be statica=
lly set, even when their ipv4 addressing<br></div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 5 May 2020 at 09:=
02, Fernando Frediani &lt;<a href=3D"mailto:fhfrediani@gmail.com">fhfredian=
i@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
 =20
   =20
 =20
  <div>
    <p>I believe NAT66 should not be stimulated in any sense.<br>
      One of the greatest things of IPv6 is to restore end to end
      communication.</p>
    <p>PDs should only change when there is a re-connection and the CPE
      should be able able to handle that correctly updating its LAN
      prefixes accordingly.<br>
      Stimulating and making that easy for general usage is like a crime
      against IPv6. If one really needs to use that &quot;chewing gun&quot;=
 he
      must know what he is doing and to manually for that exception
      case.</p>
    <p>Regards<br>
      Fernando<br>
    </p>
    <div>On 04/05/2020 17:52, Joel Wir=C4=81mu
      Pauling wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f">I am all for exposing
          Cone Nat in UCI / Firewall zones as an option to the
          masquerading configuration in a zone.</div>
        <div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f">Also as much as I hate
          it nat66 for IPv6 needs to be exposed in the same place -
          specifically for mapping routable PD which change often to
          ULA&#39;s. <br>
        </div>
        <div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f">-Joel<br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, 5 May 2020 at 07:25,
          Gracias Amigou &lt;<a href=3D"mailto:puchapapa01@gmail.com" targe=
t=3D"_blank">puchapapa01@gmail.com</a>&gt; wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">Please add this package as official:<br>
            <div><br>
            </div>
            <div><b>Posts:</b></div>
            <div>
              <ol>
                <li><a href=3D"https://forum.openwrt.org/t/xt-fullconenat-i=
mplementing-rfc-3489-full-cone-snat-in-openwrt/14816" target=3D"_blank">xt_=
FULLCONENAT
                    -- Implementing RFC 3489 full cone SNAT in OpenWrt</a><=
/li>
                <li><a href=3D"https://www.right.com.cn/forum/thread-319827=
-1-1.html" target=3D"_blank">[12/8=E6=9B=B4=E6=96=B0]OpenWrt
                    =E4=B8=8A=E5=AE=9E=E7=8E=B0 NAT1 (Full cone NAT) =E7=9A=
=84=E6=96=B9=E6=B3=95=EF=BC=8C=E6=97=A0=E9=9C=80 DMZ/UPnP - OPENWRT=E4=B8=
=93=E7=89=88</a></li>
                <li><a href=3D"https://blog.chionlab.moe/2018/02/09/full-co=
ne-nat-with-linux/" target=3D"_blank">=E4=BB=8EDNAT=E5=88=B0netfilter=E5=86=
=85=E6=A0=B8=E5=AD=90=E7=B3=BB=E7=BB=9F=EF=BC=8C=E6=B5=85=E8=B0=88Linux=E7=
=9A=84Full
                    Cone NAT=E5=AE=9E=E7=8E=B0 | ChionLab</a></li>
              </ol>
            </div>
            <div><b><br>
              </b></div>
            <div><b>Git:</b><br>
            </div>
            <div>=E2=80=A2=C2=A0<a href=3D"https://github.com/LGA1150/openw=
rt-fullconenat" target=3D"_blank">GitHub -
                LGA1150/openwrt-fullconenat: Netfilter and iptables
                extension for full cone NAT ported to OpenWrt.</a><br>
            </div>
          </div>
          _______________________________________________<br>
          openwrt-devel mailing list<br>
          <a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_bla=
nk">openwrt-devel@lists.openwrt.org</a><br>
          <a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-dev=
el" rel=3D"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/=
listinfo/openwrt-devel</a><br>
        </blockquote>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
openwrt-devel mailing list
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" target=
=3D"_blank">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a>
</pre>
    </blockquote>
  </div>

_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div>

--000000000000155a8f05a4d9a9a3--


--===============6086606562589051045==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6086606562589051045==--

