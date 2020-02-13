Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9285E15B9B0
	for <lists+openwrt-devel@lfdr.de>; Thu, 13 Feb 2020 07:41:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mkCYBWfVHkCCxx5vzvfhLXmMvVkv6jk6Mrfe7ReYpcQ=; b=qiP
	o+VnZtdog5drZAiXaRo/D+noXEGwV+FcRPNkYawu19HbLcKH05oguzdnyWHKRnsi1/PBEn/HTnalz
	IosqceGCDWIK8i2XClwyAE9SUvwQGiTJ11R2hlIBOCHJiYqeETY8emAFNDFRnOkrDXKFJbSm40KkM
	WovnW1ntZc4HdJbEcCWA9MarGlnVKszzh6d2dfF02EE++gdmh+DswNaMS2hILT18B+Sq+ooA0JuGg
	jpo7BBDNZBX0qsLK44gGSBNF8o9APlqVyIIRFekvland7yw+4VoTvRqh0YQoVBJbrTMaGyJ3L9UQn
	15+cONH9mA8d7LTg56ldQte80KYhbIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j28BF-00081x-Kx; Thu, 13 Feb 2020 06:40:57 +0000
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j28B8-00081X-KD
 for openwrt-devel@lists.openwrt.org; Thu, 13 Feb 2020 06:40:51 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id db9so2150507qvb.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 12 Feb 2020 22:40:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=EndA0r6MB3mmQABC4W/mg9cTuNU7ABZHeB3VJVOl26g=;
 b=ppjMnJQyd+WAggqwj1S1ebncSrHl5243vVRH1Cx1mTm+QibO9F7/zljvT5BRIvN1Jq
 sn5kvg3sKogeXGNcPogS25d4/VUiwbsPeTGHSFtYUH5FSZdxylGywYOdZLbgJAOXtHcE
 uDl6tPhoWltFA2R5hzrsqV4tHRXvqXwKYKTRgrg1omknBhfVXymkD+yBwgt1qonYnvc/
 fwNsnKsWA0TT/2g/Ge0l7MUnz5Eymoc4hnBt/x9w9+54Xi4I53OP76zERHnmyz4JkF/h
 1a9zCcjNGapKQDBTRl3ilQRhug19jhMcIfdo6VolvIdIdHbsVxz9TORemjrR4qxXVkDU
 /aIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=EndA0r6MB3mmQABC4W/mg9cTuNU7ABZHeB3VJVOl26g=;
 b=r9klPc1M1n8ErgY4O8gUgGpZurczEzz1GOWdDf6MC4nweSW2JWF8cH6E5TL2sqe81N
 2mVznF5PJKam69FmnCJFr794FUhZd/yB2L7WynyyImA5+2dC1rb6mYgsWBV2X1TheN19
 0rTHe2/bd2ACeXJWXkP4GysiUe8tYmzUsNP/jlJA9/+nu+dZYB3rGPaT5dQVI9g4PT0R
 cIwoNBOwbIfhsYFsOsCzZvW0Q43V1THJIsgqeWPkKixu/wSNyL8+sNZ/p6BWFYuTaXuD
 xJvYwrlehglrQwC7OPUGvBXR5BqJ1mBMlTLVqv7lCfxczXPL/Zrfjq+OLjfhJw7qf9dO
 O71w==
X-Gm-Message-State: APjAAAVmzVUA/DiJIi2nyMvESfa5LuffvMQllXHMBCPQtXw2u7Y0uFb8
 P9Gn1nCtP108yRAx1BFFIqdX0zXGsUu3tFLvoPgBARFnEJ0=
X-Google-Smtp-Source: APXvYqwHeS4LtF8MPIg24znnDWhNc1te+cnTjcA1YJsjT1tMoiIKC4Un70AF1TNqK4iSV42wQ+gx03jZCGzaXcqNfzs=
X-Received: by 2002:a17:902:654d:: with SMTP id
 d13mr11561849pln.187.1581575581010; 
 Wed, 12 Feb 2020 22:33:01 -0800 (PST)
MIME-Version: 1.0
From: Luiz Angelo Daros de Luca <luizluca@gmail.com>
Date: Thu, 13 Feb 2020 03:32:49 -0300
Message-ID: <CAJq09z4XGdtXMfXWpreJeMC81Arhr69Vm=s-2iftABCuG7_35Q@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_224050_696154_CC91821A 
X-CRM114-Status: UNSURE (   6.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [luizluca[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] Rebuild kernel modules from changed packages for
 each stable dot release
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
Content-Type: multipart/mixed; boundary="===============5683204579005396666=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5683204579005396666==
Content-Type: multipart/alternative; boundary="000000000000b10ece059e6f421c"

--000000000000b10ece059e6f421c
Content-Type: text/plain; charset="UTF-8"

Hello,

ksmbd recently got an update for 19.07. It consists on a kernel module and
some auxiliary programs. The auxiliar programs got into the oficial repo as
usual. However, the new userland package might be incompatible with the old
kernel module.

I downloaded the last SDK and the kernel module package dir and it built
nicely.

Once a package kernel module is changed on a stable branch, can we rebuild
it with each previous dot releases SDK for each target and subtarget? And,
finally, add the new kmod*.ipk to the respective
<target>/<subtarget>/kmods/<kernver>/?

Regards,

---
     Luiz Angelo Daros de Luca
            luizluca@gmail.com

--000000000000b10ece059e6f421c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>ksmbd recently got an update for=
 19.07. It consists on a kernel module and some auxiliary programs. The aux=
iliar programs got into the oficial repo as usual. However, the new userlan=
d package might be incompatible with the old kernel module.</div><div><br><=
/div><div>I downloaded=C2=A0the last SDK and the kernel module package dir =
and it built nicely.<br></div><div><br></div><div>Once a=C2=A0package kerne=
l module is changed on a stable branch, can we rebuild it with each previou=
s dot releases SDK for each target and subtarget? And, finally, add the new=
 kmod*.ipk to the respective &lt;target&gt;/&lt;subtarget&gt;/kmods/&lt;ker=
nver&gt;/?</div><div><br></div><div>Regards,</div><div><br></div><div>---<b=
r>=C2=A0 =C2=A0 =C2=A0Luiz Angelo Daros de Luca<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 <a href=3D"mailto:luizluca@gmail.com">luizluca@gmail.com<=
/a></div></div>

--000000000000b10ece059e6f421c--


--===============5683204579005396666==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5683204579005396666==--

