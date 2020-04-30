Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C90171BEE4C
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 Apr 2020 04:27:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C2o69yIpBSPPX11Wy3LeAx9WmA7Oh4qWLBtrXIsGiaM=; b=a0EVAoCYJ5gN3yIZiuJeVVoc6
	E1E3vrOR6KF0qe16KcCTeDvnm7o98BTzYKybnGKvHRqrjBKUizP0RerJAz1dy7nQSLqYz/x4WsE1/
	tWY+NRC/QMKgAJGn2HaLK+91goVBiLzni4uwQTMqIRG8d/UtUe0KodHO7Z+ikSgAbFK0DW45bWA+R
	NvlYaKakm/51GP5yfqfNl5SGeDMvxkOVJauGSq4xnweogtj4iCCZHH3PvWa/iSgUQuMgwwBJsZefe
	pLMHwL0LBxJD+OEx72g3/vEPR2Bpa1c0iBd11vAhDPjhns9O+FzE6Ng9iFfUsv9qNBK/1PN4XCHlt
	twewhzrWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTyv7-0003Pw-AW; Thu, 30 Apr 2020 02:27:25 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTyv2-0003Np-4J
 for openwrt-devel@lists.openwrt.org; Thu, 30 Apr 2020 02:27:21 +0000
Received: by mail-pg1-x533.google.com with SMTP id d3so2032400pgj.6
 for <openwrt-devel@lists.openwrt.org>; Wed, 29 Apr 2020 19:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JUxpiACF75WPywcuusfRKBOTE9AKjCNHHnq6Vi0rYco=;
 b=GlLr67/bGimK5l6gxQj+Uy5c/tP8o/IZDw0ML6JK+Zu2o/OM++5PZNKK3MAihi70Yf
 fkIE5O1fRddK8lUhRwCKw/2oxj2StQsir2jrJHcQujEMJ6WjgIyshJTHC0baDP4lkOwL
 7RfvzstofItsTJc0JhBmNnbbLiZ/UsatUWxPZKFCd8CIcoqwDjkEObbq4j/wwQOepvhZ
 FZq/P5WITfUSiKLdu85XbWaZBrSwvcyKEdwdGHyl52WoQD7/WJPGj4tkouN3E3i2hAcT
 qb52FJDtVJz2u8gnpjZ42bSQmuyL2wLwAglpuPnp40FNkGBWPBB+thWTvwmDDTdKmudS
 Yxrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JUxpiACF75WPywcuusfRKBOTE9AKjCNHHnq6Vi0rYco=;
 b=bCjf4TAdktkcb1e+X1V/xxgz0+uKwjhN7aDOBwD+FS2yUIPhaGza105PDkf4UsjSdn
 q285OwuoM5mFf9qp37swYS7b1FoL/NxJPtWkR/mWCXZ4iVZ3Nz/gk3jodqwWNbHQjJYd
 TMPtz2rgHgeokltz2ANSbK1nI8DGiL9BJnIwKw7uqGSclj3QKgC4Ysim48XxaReLfkMG
 QBDExxvgDcIpFA2E7K3xUcfm0kMYWXykG+9cODwmxucQPGJ8OXQtOyqxVNCjokyRBRq+
 rTTI5ybfsgibvCQoiJ57W6QA4Rg6wG0iqNul2HfTiOE98OJ6Dg7Y+x8iJIpi2ILU8BWT
 1iAg==
X-Gm-Message-State: AGi0PuZh6DFiKlM/vBT/j2f6ymOvw4owGA3nLo4h568ALKytKtYiWPqh
 dXSRlQydiXlkJM+I+H4Wnp1JUX6G/3zb1r5z+I8=
X-Google-Smtp-Source: APiQypKYoD/AH+ktsCOH4eIo7V0DolV99g9KJdvvEp5cADO2pHE+Ek83KSmVxrJ0qDeSFE4QSAqcn04/VA7t2xDWFJQ=
X-Received: by 2002:a62:6dc3:: with SMTP id i186mr1237459pfc.12.1588213634848; 
 Wed, 29 Apr 2020 19:27:14 -0700 (PDT)
MIME-Version: 1.0
References: <8E30BC1C-83C5-4CB1-881C-344B6CD865D2@redfish-solutions.com>
 <20200429090625.GA22217@meh.true.cz>
 <DAA85EB3-2D0B-4A03-9BE0-865DAAFE76C9@redfish-solutions.com>
In-Reply-To: <DAA85EB3-2D0B-4A03-9BE0-865DAAFE76C9@redfish-solutions.com>
From: Luiz Angelo Daros de Luca <luizluca@gmail.com>
Date: Wed, 29 Apr 2020 23:27:03 -0300
Message-ID: <CAJq09z7Vb_xdz4m9bWq_a7QGZ9-H-xZBKDKxWQW6J=ynQGqr=w@mail.gmail.com>
To: Philip Prindeville <philipp_subx@redfish-solutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_192720_172131_D9F6BDDF 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:533 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [luizluca[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Signing, meta-data,
 etc. on images and losetup mounts...
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
Cc: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============2919270854513247958=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2919270854513247958==
Content-Type: multipart/alternative; boundary="000000000000885d8505a478cd90"

--000000000000885d8505a478cd90
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

>
>
>
> Thanks.  Where is the beginning of the whole disk image (and end) if I
> want to =E2=80=9Cdd=E2=80=9D it onto an SSD or SD?
>

Meta is at the end. Gunzip will give you a warning and ignored it when
expanded.

First byte of the expanded image is the disk sector 0. It is a normal disk
image with partitions. I didn't test EFI, which might use GPT but the other
one is simply a DOSMBR partitioned disk.

The default size is about 256MB (or is it 128?). Just dd it to something a
little bit bigger and let it run.

Regards,

--000000000000885d8505a478cd90
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div class=3D"gmail_quote" dir=3D"auto"><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><br><br>
Thanks.=C2=A0 Where is the beginning of the whole disk image (and end) if I=
 want to =E2=80=9Cdd=E2=80=9D it onto an SSD or SD?<br></blockquote></div><=
div dir=3D"auto"><br></div><div dir=3D"auto">Meta is at the end. Gunzip wil=
l give you a warning and ignored it when expanded.</div><div dir=3D"auto"><=
br></div><div dir=3D"auto">First byte of the expanded image is the disk sec=
tor 0. It is a normal disk image with partitions. I didn&#39;t test EFI, wh=
ich might use GPT but the other one is simply a DOSMBR partitioned disk.</d=
iv><div dir=3D"auto"><br></div><div dir=3D"auto">The default size is about =
256MB (or is it 128?). Just dd it to something a little bit bigger and let =
it run.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Regards,</div><d=
iv dir=3D"auto"><br></div><div class=3D"gmail_quote" dir=3D"auto"><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">
</blockquote></div></div>

--000000000000885d8505a478cd90--


--===============2919270854513247958==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2919270854513247958==--

