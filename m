Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDE82B734
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 16:03:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xWPBU8f2e3d451S03sdAX/rQ67ZBAo6VxG1y4h5C6B4=; b=mG8aK4r85qOU0m81CxBcSaqNs
	ayWdCLuJ7tWfTSg1QXNFQE83gfFI5T1kv/adl6YpiVs7w1j3XsKd0Kf+xIMagaVRDsI9hAPLlBvBB
	6tJzKHJuTcAb41JVfPuA/u2dUZI5RtE3ZH9PlT1U3ZT6EmaxHAeszn+XrBRuorkeMHjE78hNEyR81
	kBQ/72HTw7cWWz4yWMXH31X3rDkU7CPNfgJKoqIFMVOtrhZEjQmVmw6UZJqaeEJylFkhaa8iVy+c1
	6tB+zqo1kq5JyNKnIOyQ8/ZfZdHDS+vGP/KiIjjfae+HNLX1GdoVy3pNBOKRcAPjHuMvPhXwz6tJn
	54qm1Ee2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVGE6-0001Of-9n; Mon, 27 May 2019 14:03:46 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVGDy-0001OG-Fs
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 14:03:40 +0000
Received: by mail-wr1-x432.google.com with SMTP id h1so2923832wro.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 27 May 2019 07:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DhucpNM/6u34itu8HEVw0ZizwmDKAB0Cbxtdt5FfU6w=;
 b=KW8h0i0y4sFI7BBjuuS8vN5x6P1D3HkDrgdtZC2vlFBva2bTvcpVH1U8y404Xm6df1
 TvEeZ80K6kU02stDg7h4h/g1SZHnIt0EZdC5URc1RxVZcO4WkJ0onmcs/lF1PGMNu+Ga
 rq8N2oeeAaQpRCiqc2IhhR4UlZzNAvIuFGKLQ3xDoKvNcCQFoInPHCvECazrw5OUpHdH
 g7iWGWocJWXoaBLSTbPcgYF1u7Ez0SmoPLIt5E0B3mUx29Ei1zRlYdFn/z1wO6TL8TJx
 5VDou4xZXL2p/u0beMZsK2j1oFCST3PYC3kSpPMot2exU76xA7khHOnA+rmUdoM9hoMe
 bDZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DhucpNM/6u34itu8HEVw0ZizwmDKAB0Cbxtdt5FfU6w=;
 b=CX/EoMH/QB8TokfGvakrsWMH8q5o+cybK+qrnyL9Ird22Nc6qLF2ztNERx4OicSSb6
 o+5hoYGCSbgTCmC4Yp8U9VDWrx8GoC3ljNQSYmDCGTfhh8mp5MNL7tex0yPwZjouYUSl
 A27pPQxJri9gfR+gOSVSbq17Ofw/ixmDfP0ceGNkxxKbxhNNPrgtMTgRhscefycpWrpj
 Vm4pjKZ9MN1tBC+c035XnXm1qgxZIUrvKH5L2dP3NO/Z/lPMExzwc+7UKynteFYD646W
 syfeiPn8Ujpvc0ST3oDqdYrYGqpjla/eDQwGqF8E0Emy6bQ+HvhXqgHNiruORnw+U1yn
 SE9Q==
X-Gm-Message-State: APjAAAVKpIU8j/odA/EqIiAQR5jCZbGrHRAsM6bYGgBU6T4Nws41ghFZ
 /TzuXiyI1IsXiEj9c1M7qTk40J8453yoTqyr6VKMAdn97Sc=
X-Google-Smtp-Source: APXvYqwWuX2mxHiNbO8hbzdY3IydPPW3wNPoV75YbK6mvvtWHZb/0QOfTVaUhHOSAFlzSb6kxbZ4MelYgktVMN5BnpU=
X-Received: by 2002:adf:de11:: with SMTP id b17mr3195050wrm.19.1558965816660; 
 Mon, 27 May 2019 07:03:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAC8mBSVP+Uev=H_x4actCT9g+FV1X0bVFZ=06biyBA=w-s6AkA@mail.gmail.com>
 <f30df01f-ea9d-32ae-2e7d-286fa4aab164@ironai.com>
In-Reply-To: <f30df01f-ea9d-32ae-2e7d-286fa4aab164@ironai.com>
From: =?UTF-8?Q?Denis_Peri=C5=A1a?= <darkman.hr@gmail.com>
Date: Mon, 27 May 2019 16:03:33 +0200
Message-ID: <CAC8mBSUYMvuwJaAftwYCL+TaYTaDs_4VT2P9Q3-j5sDOF6xO6Q@mail.gmail.com>
To: Vincent Wiemann <vincent.wiemann@ironai.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_070338_534355_3059786C 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:432 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (darkman.hr[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] dnsmasq not leasing after a while. Sometimes
 more than 5 times a day
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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
Content-Type: multipart/mixed; boundary="===============2420688122596734827=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2420688122596734827==
Content-Type: multipart/alternative; boundary="000000000000b817240589df0301"

--000000000000b817240589df0301
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, dnsmasq is still running but lease is not given.. I don't know how to
debug it more.
Configuration is simple, one subnet range 192.168.0.10 to 192.168.0.200 on
wlan0 interface for example. But it's not wifi issue, local also.
It sends mail as soon as error is detected and restarts dnsmasq after which
it works. Device is not rebooting.
 OpenWrt 18.06-SNAPSHOT, r7766-e9a7344550

Also my scripts checkes two times just to rule out false negative.
Also, more public exposure or none is pretty much same.. I have device
which gets maybe 1-2 person and one with 50 .. behaving same. After a while
it stops responding. Any more debug I could use somewhere?

On Mon, May 27, 2019 at 2:37 PM Vincent Wiemann <vincent.wiemann@ironai.com=
>
wrote:

> Hi Denis,
>
> I don't have such problems. Please post your configuration and device
> setup and try to
> get some logs. As far as I understand dnsmasq is unresponsible, but still
> runs?!
> What do you mean with "restart messages"? Are your devices rebooting?
>
> Regards,
>
> Vincent Wiemann
>
> On 27.05.19 13:43, Denis Peri=C5=A1a wrote:
> > Hi all,
> >
> > This "bug" is following me for some time now.. a year at least. I'm
> hoping day after day that someone might find reason and fix it. I've set =
a
> script that checks dnsmasq and restarts it.
> >
> > -->
> >          if ! ( dhcping -q -h 00:99:99:99:99:99 -s 10.0.0.1 ) #Jos jedn=
a
> provjera
> >                         then
> >                                 echo "DEAD dnsmasq! - `date` " >>
> /scripts/CRASH.log
> >                                 killall dnsmasq
> >                                 sleep 2
> >                                 dnsmasq;
> > .... .>.>>>> etc........... CUT ---
> >
> > two checks to be sure... and I get a lot of restart messages. different
> nodes.
> > I run this via cron every half hour.
> >
> > Anyone have similar problem?
> >
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> >
>

--000000000000b817240589df0301
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, dnsmasq is still running but lease is not given.. I d=
on&#39;t know how to debug it more.<br>Configuration is simple, one subnet =
range 192.168.0.10 to 192.168.0.200 on wlan0 interface for example. But it&=
#39;s not wifi issue, local also.<div>It sends mail as soon as error is det=
ected and restarts dnsmasq after which it works. Device is not rebooting.</=
div><div>=C2=A0OpenWrt 18.06-SNAPSHOT, r7766-e9a7344550=C2=A0<br><br>Also m=
y scripts checkes two times just to rule out false negative.=C2=A0<br>Also,=
 more public exposure or none is pretty much same.. I have device which get=
s maybe 1-2 person and one with 50 .. behaving same. After a while it stops=
 responding. Any more debug I could use somewhere?</div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 27, 201=
9 at 2:37 PM Vincent Wiemann &lt;<a href=3D"mailto:vincent.wiemann@ironai.c=
om">vincent.wiemann@ironai.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">Hi Denis,<br>
<br>
I don&#39;t have such problems. Please post your configuration and device s=
etup and try to<br>
get some logs. As far as I understand dnsmasq is unresponsible, but still r=
uns?!<br>
What do you mean with &quot;restart messages&quot;? Are your devices reboot=
ing?<br>
<br>
Regards,<br>
<br>
Vincent Wiemann<br>
<br>
On 27.05.19 13:43, Denis Peri=C5=A1a wrote:<br>
&gt; Hi all,<br>
&gt; <br>
&gt; This &quot;bug&quot; is following me for some time now.. a year at lea=
st. I&#39;m hoping day after day that someone might find reason and fix it.=
 I&#39;ve set a script that checks dnsmasq and restarts it.<br>
&gt; <br>
&gt; --&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ! ( dhcping -q -h 00:99:99:99:99:=
99 -s 10.0.0.1 ) #Jos jedna provjera<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 then<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;DEAD dnsmasq! - `date`=
 &quot; &gt;&gt; /scripts/CRASH.log<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 killall dnsmasq<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sleep 2<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dnsmasq;<br>
&gt; .... .&gt;.&gt;&gt;&gt;&gt; etc........... CUT ---<br>
&gt; <br>
&gt; two checks to be sure... and I get a lot of restart messages. differen=
t nodes.<br>
&gt; I run this via cron every half hour.<br>
&gt; <br>
&gt; Anyone have similar problem?<br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; openwrt-devel mailing list<br>
&gt; <a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">o=
penwrt-devel@lists.openwrt.org</a><br>
&gt; <a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" r=
el=3D"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listi=
nfo/openwrt-devel</a><br>
&gt; <br>
</blockquote></div>

--000000000000b817240589df0301--


--===============2420688122596734827==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2420688122596734827==--

