Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B74291C9B
	for <lists+openwrt-devel@lfdr.de>; Mon, 19 Aug 2019 07:39:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=aseXsQru90oX+5Js0ts7n0qtbbV3Zr91ECBp/8ORDQ8=; b=ZPo
	4huEm9aj3MSFgtkYBvujUfbX/ILn9QxJE6ZixPfa3/qYmwfhIw4P4zOM0pO09FyhYDZPyfA9nVUki
	dgPDcS4WoUN/rgeSJkZLNaytp7beCvYd9A9r8Hu485PG/RjxEJINvPRHufYYCmmoKs6QiuAcH2Nth
	b/FJx2SwdRU1HFITvx0G1x6TX60EAjqj0Nw7aY9yJU9kiTiEoECr0e5DsZzPd+rzMq+mRoLdQEepP
	eL3Ql/kIhvbkPrZjvBi0lZo5ZkHRjoHVhnK6jfkZbKUE2S/IMMUO9elJSIhaWWZrtaQ4GN4bHWUTg
	T2ta802FkFlXQcQ9Reh3wEC86Jzc10A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzaNP-0001JD-RS; Mon, 19 Aug 2019 05:38:44 +0000
Received: from mail-vs1-xe2f.google.com ([2607:f8b0:4864:20::e2f])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzaN8-0001Io-65
 for openwrt-devel@lists.openwrt.org; Mon, 19 Aug 2019 05:38:27 +0000
Received: by mail-vs1-xe2f.google.com with SMTP id b187so400379vsc.9
 for <openwrt-devel@lists.openwrt.org>; Sun, 18 Aug 2019 22:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=tLrA5V/val53FqNXFpiy3R6RTGUfKY0cjne1H76IO/E=;
 b=ibtTsMVir7dcLqo+o/AMaTwOlEpATH35D6iuwAvfvMYoB/FMHkUgrGv8BgPxGSEf71
 dEP1AUi8QXYvR/FcZTCvqya4DDDqX9SPShdA/hfSLqiduXCxcPy0yBGjcMO+6Lqdoe5Q
 N8a15xCc0XL6dBdFjl9d9Hc/xhzS6i687FiahVkGElv5CztjWboFouvgF//0u92xAPAy
 r3tCpmTvrGq/S3tkG9UVEsWsAP5HJIi6siIo3C/W5SVGSvRGOlBAjYGnFkaedeCxAOJ7
 I+QxVlqc5XR6mjDYFpAcnWixi+30nq3XAv5YS0I8AsZbnnqiieOq/zHoAFFwhlJ2X4eh
 IPcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=tLrA5V/val53FqNXFpiy3R6RTGUfKY0cjne1H76IO/E=;
 b=iRKKqkZwQ4+94pDxDXwDB1nzBJ3CEaXE+oqfDL05fhpRI3jxkjjYIWloZAiZtY5mVB
 nSe4jp8I90fxREAI85I3Ni4sHLezh2xA9vsnNVA0d0/Bj75ibY/tRsIEZQqSPmkHPjdN
 iKY3VfgmpjvVsug8vX5p0OjP9nCO7NR5bJwQ2JFlLi4mK4k588XxxahB+eJLdkHhmmmh
 x6W+OqwMVyph/m/egTvfurfDRojuIwvfeJ4CRroJVCiQhKp0Rq4YnieKhOfOfH8OAs64
 sD4rltnqYypASKBJlMzDM07FQCnWkgPJSPSicf6xyN4lesSEgRyKrpienIH/3FprXA/0
 Bryw==
X-Gm-Message-State: APjAAAXxPOLpf/CSkDyAX0vRqSrthDuaPi4WpG9D4j92taWPwQFfauTG
 irKgo8QHM/5DT992vqeb822szrH2X63m6+cnQTbLyLVi
X-Google-Smtp-Source: APXvYqxeR0DtdrRXJKLlYPu17mcz8OroCZ0pEj0sMrnEiJM3qRemxtsfMUqPtQt/88q16MoVg7WsmfE5HZ6dlgZfpI8=
X-Received: by 2002:a67:be15:: with SMTP id x21mr13022456vsq.142.1566193103071; 
 Sun, 18 Aug 2019 22:38:23 -0700 (PDT)
MIME-Version: 1.0
From: John Braley <server.email.mash4077@gmail.com>
Date: Mon, 19 Aug 2019 00:38:16 -0500
Message-ID: <CAHMvWa59kPzZJafJQvG3J6BmQN6-H10iOpGGKxtFzHeWTzShHA@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_223826_229232_D31E812D 
X-CRM114-Status: UNSURE (   6.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e2f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (server.email.mash4077[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (server.email.mash4077[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_OBFUSCATE_05_10   BODY: Message is 5% to 10% HTML obfuscation
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] X86 UEFI Support merge
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
Content-Type: multipart/mixed; boundary="===============6600535681892083454=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6600535681892083454==
Content-Type: multipart/alternative; boundary="0000000000008eed1e059071bfe1"

--0000000000008eed1e059071bfe1
Content-Type: text/plain; charset="UTF-8"

It looks like we are almost there for UEFI support on OpenWRT. Can someone
pull the commits into the dev tree for testing?

https://github.com/openwrt/openwrt/pull/1968

Intel has said it will remove UEFI-CSM or legacy bios from upcoming
platforms by 2020. However many motherboard and PC makers have already
started with the transition. Currently we can get OpenWRT installed via
some crafty file extraction and installing of a UEFI partition via a
different OS. The above link has the work done to get OpenWRT working from
a self install mode like we have with the current builds. According to the
folks there, the patch is ready for inclusion to the master.

I am able to test any development builds as I have an ASrock J5005-ITX
motherboard with no legacy or CSM capabilities I want to use as my router.
For being embedded I can push excess of 700mb/s across a pair of VPN
connections.

Further information regarding Intel and UEFI
https://www.anandtech.com/show/12068/intel-to-remove-bios-support-from-uefi-by-2020

--0000000000008eed1e059071bfe1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It looks like we are almost there for UEFI support on Open=
WRT. Can someone pull the commits into the dev tree for testing?<div><br></=
div><div><a href=3D"https://github.com/openwrt/openwrt/pull/1968">https://g=
ithub.com/openwrt/openwrt/pull/1968</a>=C2=A0=C2=A0<br></div><div><br></div=
><div>Intel has said it will remove UEFI-CSM or legacy bios from upcoming p=
latforms by 2020. However many motherboard and PC makers have already start=
ed with the transition. Currently we can get OpenWRT installed via some cra=
fty file extraction and installing of a UEFI partition via a different OS. =
The above link has the work done to get OpenWRT working from a self install=
 mode like we have with the current builds. According to the folks there, t=
he patch is ready for inclusion to the master.</div><div><br></div><div>I a=
m able to test any development builds as I have an ASrock J5005-ITX motherb=
oard with no legacy or CSM capabilities I want to use as my router. For bei=
ng embedded I can push excess of 700mb/s across a pair of VPN connections.=
=C2=A0</div><div><br></div><div>Further information regarding Intel and UEF=
I</div><div><a href=3D"https://www.anandtech.com/show/12068/intel-to-remove=
-bios-support-from-uefi-by-2020">https://www.anandtech.com/show/12068/intel=
-to-remove-bios-support-from-uefi-by-2020</a>=C2=A0=C2=A0<br></div></div>

--0000000000008eed1e059071bfe1--


--===============6600535681892083454==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6600535681892083454==--

