Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 244A81BA9DC
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Apr 2020 18:12:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=whuu4p8p1u+8ssbHlgAjFvRCeKXHR5o9GHlVGLqDoWw=; b=ME/fN6c0cASqpBQgEhu0+kld4
	ibSgcI/MS7/PW116wLeVgqjP0W4wEdWelTYAKRwUKGWZwaVFEflIOtPNqTLSfLDNNrrPrVMfc2c64
	lQ7KTS+KMRVbtphlkEEyw2uZOiftYsk0q6kr0ClQqA4WdoxPDxr8yXAPMr0jZfyvnnd8ASbz2On0j
	EUxZ4HTAaplZyBeOVPRAv9fixS7lX16+elqpvV+LxhKKjAu1adStGw5ilmWb0G3nAhISlMczpneg+
	noDAr5p4e8W41DpEYvt3Qe+i15noJBFHc9z5UoPpHjxFatRC6oNnxOvwV7ZmkMuHNhZDO+CLDsmqR
	U1ZbjJTQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT6NH-0004Mw-Le; Mon, 27 Apr 2020 16:12:51 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT6NB-0004MA-0H
 for openwrt-devel@lists.openwrt.org; Mon, 27 Apr 2020 16:12:46 +0000
Received: by mail-lf1-x130.google.com with SMTP id x23so14329157lfq.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 27 Apr 2020 09:12:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jHRTMhoK0ejzrR33U0Ji9sw3giIs/9fu21FXkBoadI4=;
 b=lhEw9w3JAuwQC6ryZ3aZ8GdHW1hXCXNI2JqIitGkCDU9UsRHm0EAqRt99WM86NkOB5
 UghCCHjGWcuJb7cTwwtLCyqlHghgPKrASBb4+KaXxZCuahl7bcXglG4NwnyYDecbwQPN
 762uRzVHcY/tSLqsVGfE3mzpR8VpfcoEr2BEc6nED5S3aLlDCDNdAWQ358vyJyjEIqX1
 obAn2E+l75WXIFtCX+bzqYV6p49AdYwn9xyQTH7IgRugPKMOZDxLxaDDA53NkJy25+VS
 5oAIRVtkTdJMJEVLjaC5rvPA4qFyJwqKutjQlP2dtuWqidqyDh+EV8sgVhLDK6Hc4Rvw
 9w0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jHRTMhoK0ejzrR33U0Ji9sw3giIs/9fu21FXkBoadI4=;
 b=DLuY/rGMltHyhsJvRSOkMC1ie6b3q3n34RqnnFcABF4OxZEw6eVHNEokNkhF95rh4I
 tD4AO5/8l/ZMJ4dvJuCd4n6LfNwl+xmT0C0vn2paSueJcXfUD4ITXQ8A1uUmuZO4Rk6M
 kSYIj1qrmtOwz9L/gX6ZqNDmaClPW0Unv7S9flgJMjkWYDfhQYF+bjC8oylw+jx8mBdc
 FFnfWQ+TPN1q2w6jfKsTEXIIpI/MvCsaBsuBUwxcXxkTOn0PY6EAFvJcDgiOR+jfZNz2
 USsmIDhTe4E3dMl/JLW6oeBeHcdRARfpCkQyMMTv2SnKcqJXUIVgId4LAREMDe4JyU6q
 2wYQ==
X-Gm-Message-State: AGi0PuZZE3V3bG5pqOkdlo0XH6t4MrMazF1pgJf2Nb9wQWEHD/lFHnJb
 WVEA2DSc0i2TfoyEC/AO2m5MgAjjM8u0tIG69gxguA==
X-Google-Smtp-Source: APiQypINnJRKhQWRiPxPtPRvaWNfTFbXZv5uRBt8oWHSFqddvxkiMOJRIvd9+F1N5Pa1NrleLR4tWs5V/siIQkqISYI=
X-Received: by 2002:a19:4b90:: with SMTP id y138mr15606634lfa.39.1588003957277; 
 Mon, 27 Apr 2020 09:12:37 -0700 (PDT)
MIME-Version: 1.0
References: <CALYKT1jbVZ_YkHVZzJ2-CFb=8RxzjmtZM9R1CRhM86=AjC6jFw@mail.gmail.com>
 <877dy1xfq3.fsf@miraculix.mork.no>
In-Reply-To: <877dy1xfq3.fsf@miraculix.mork.no>
From: Michael Jones <mike@meshplusplus.com>
Date: Mon, 27 Apr 2020 11:12:25 -0500
Message-ID: <CAJQUmm7-tfDJ32BAjpTu9ygG4xO-K1BfpBxRS61inO+qZC_V8g@mail.gmail.com>
To: =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_091245_119179_566EBF34 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:130 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Advice needed - Proper approach to port 5G/LTE
 modem into OpenWRT
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
Cc: Jeonghum Joh <oosaprogrammer@gmail.com>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============9218302883136594594=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============9218302883136594594==
Content-Type: multipart/alternative; boundary="000000000000d19a2605a447fb61"

--000000000000d19a2605a447fb61
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 27, 2020 at 7:42 AM Bj=C3=B8rn Mork <bjorn@mork.no> wrote:

> Jeonghum Joh <oosaprogrammer@gmail.com> writes:
>
> > I am porting a 5G/LTE modem into OpenWRT.
>
> Follow the instructions for LTE modems.  A 5G modem is pretty much the
> same wrt drivers and basic management.  At least for Qualcomm based
> modems on a USB bus.  Have no experience with anything else.  The Intel
> and Huawei modems are competely unknown to me, and most likely
> unsupported for the forseeable future.  And I'm also blank on the magic
> of Qualcomms PCIe interface. Qualcomm did work on a driver, but it's
> been a long time since I saw any update on that.  I guess no one cares
> enough.  SuperSpeed USB is fine for most users for now.
>
> Anyway, several X55 based modems are already supported out of the box in
> OpenWrt master.  There is no need to reinvent the wheel if you are using
> one of those.
>
> You may obviously decide to implement your own alternative solutions,
> like using some vendor software. But that will limit the user community
> severely. At least until the solution attracts more users.  And
> community support depends on users, which I believe is something you
> should consider since you have ended up in this forum.  You are unlikely
> to find anyone here who have any experience with your particular vendor
> software version.
>
> Personally, I am happy to give advice about anything regardless of
> experience.  But the quality of that advice is probably a tiny bit
> better when it is based on something I've tried myself.  Or maybe not?
> Is probably bad in any case.
>
>
> Bj=C3=B8rn
>
>
@Jeonghum Joh

If you decide to use the connection management software that the vendor
supplied, you'll want to integrate it into Netifd and Hotplug.d to ensure
appropriate cross communication with things in the OpenWRT system.

Please look at this file to see an example of how that is done:
https://github.com/openwrt/packages/blob/master/net/modemmanager/files/mode=
mmanager.proto
There's
a whole rabbit hole that you can follow on this topic to get every detail
right, but it's probably sufficient for your purposes to get the high level
details, and then let the OpenWRT stack take care of the rest.

--000000000000d19a2605a447fb61
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 27, 2020 at 7:42 AM Bj=C3=
=B8rn Mork &lt;<a href=3D"mailto:bjorn@mork.no">bjorn@mork.no</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Jeonghum Joh &=
lt;<a href=3D"mailto:oosaprogrammer@gmail.com" target=3D"_blank">oosaprogra=
mmer@gmail.com</a>&gt; writes:<br>
<br>
&gt; I am porting a 5G/LTE modem into OpenWRT.<br>
<br>
Follow the instructions for LTE modems.=C2=A0 A 5G modem is pretty much the=
<br>
same wrt drivers and basic management.=C2=A0 At least for Qualcomm based<br=
>
modems on a USB bus.=C2=A0 Have no experience with anything else.=C2=A0 The=
 Intel<br>
and Huawei modems are competely unknown to me, and most likely<br>
unsupported for the forseeable future.=C2=A0 And I&#39;m also blank on the =
magic<br>
of Qualcomms PCIe interface. Qualcomm did work on a driver, but it&#39;s<br=
>
been a long time since I saw any update on that.=C2=A0 I guess no one cares=
<br>
enough.=C2=A0 SuperSpeed USB is fine for most users for now.<br>
<br>
Anyway, several X55 based modems are already supported out of the box in<br=
>
OpenWrt master.=C2=A0 There is no need to reinvent the wheel if you are usi=
ng<br>
one of those.<br>
<br>
You may obviously decide to implement your own alternative solutions,<br>
like using some vendor software. But that will limit the user community<br>
severely. At least until the solution attracts more users.=C2=A0 And<br>
community support depends on users, which I believe is something you<br>
should consider since you have ended up in this forum.=C2=A0 You are unlike=
ly<br>
to find anyone here who have any experience with your particular vendor<br>
software version.<br>
<br>
Personally, I am happy to give advice about anything regardless of<br>
experience.=C2=A0 But the quality of that advice is probably a tiny bit<br>
better when it is based on something I&#39;ve tried myself.=C2=A0 Or maybe =
not?<br>
Is probably bad in any case.<br>
<br>
<br>
Bj=C3=B8rn<br><br></blockquote><div><br></div><div>@Jeonghum Joh</div><div>=
<br></div><div>If you decide to use the connection management software that=
 the vendor supplied, you&#39;ll want to integrate it into Netifd and Hotpl=
ug.d to ensure appropriate cross communication with things in the OpenWRT s=
ystem.</div><div><br></div><div>Please look at this file to see an example =
of how that is done:=C2=A0<a href=3D"https://github.com/openwrt/packages/bl=
ob/master/net/modemmanager/files/modemmanager.proto">https://github.com/ope=
nwrt/packages/blob/master/net/modemmanager/files/modemmanager.proto</a>=C2=
=A0There&#39;s a whole rabbit hole that you can follow on this topic to get=
 every detail right, but it&#39;s probably sufficient for your purposes to =
get the high level details, and then let the OpenWRT stack take care of the=
 rest.</div></div></div>

--000000000000d19a2605a447fb61--


--===============9218302883136594594==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============9218302883136594594==--

