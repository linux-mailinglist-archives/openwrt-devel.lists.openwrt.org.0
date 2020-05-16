Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 640431D5F02
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 May 2020 08:21:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HOKSnbaOQawK55+cTeQRHRmuRLExIpTUyWaY/W8rPME=; b=Y+C
	zB9PIH/MxYc0fXHWPgtkYVg5tg8A+yHj9tpno5tJztGT9BGrIByciKHLvKd39+kgjpm6mtbVum/9z
	ACRs7x3WKeLDXTFDp+7ayE1kn35IgXeMPE3CrwK/edtnKHoYYgHbc5o8c0j3gNg0Qa0bbX3LqdzwR
	P24MiaaiFQyXUHpVLOgBy3UIvSqA6IxNPoAOIaRimFU1DmFLlD0bM2LajRe+QBDZU2yN1Vsq9yW6w
	p8jLEVQv/YCc8QMkD6HdpiGnsbflO6HTpumMhtHJihPyE8I2UZHAPi8djBvmYpfI5FDiqY5oK8v9N
	GavB43egvb15Rps4Feo26yaEdTcACmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZqCJ-0005Bz-HP; Sat, 16 May 2020 06:21:23 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZqCC-0005BI-Qb
 for openwrt-devel@lists.openwrt.org; Sat, 16 May 2020 06:21:18 +0000
Received: by mail-lf1-x12a.google.com with SMTP id h26so3634439lfg.6
 for <openwrt-devel@lists.openwrt.org>; Fri, 15 May 2020 23:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=+kaQYQWaBrMss1TyumdPYZuafxW9QLYjIhvvdOS82Io=;
 b=I04Tm92esVfHSXAolf3Otiz437ZvPH7ts8v+GZlA+xpt1gZeLiXU3vBOaIZrlBQDTx
 rXfuxk/KmhjkSwci1bSl6ZH8B4meS5eLIe2/eZrZiLkacFkrwH5y2lJkp1MuUgbbqXcB
 JV8iSh9bEH4FhBOI7NN02g6qdDchKXBCT3bYmjRkz5jgva9/kkkPjzHCQnaLxd/Tvr6j
 lDNmycHBm1bqPlZiaFG6PwwrvGWE5wAg0lkzjevHRyF1hlTAZ9lyfwORjyjGcpsNgxsA
 OP9PPaVaZhhoVelxz/UujbB3dBp7enqaGnxnDN3or0bXJ40bRRfWn0vsYXKRg2oe9ToL
 Xhyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=+kaQYQWaBrMss1TyumdPYZuafxW9QLYjIhvvdOS82Io=;
 b=Bkjkn0oQbWSsIj7kG5ovb6kQYHE4jQaXTRYfTVldwbk+rOwcKbzZHBfZw8pIgJnrZ+
 dXB5Ey5oXw7LE9Rh2L54CI/mWPUb6sG42PyI0l3n0GRxW/wjC1p1L9DL7ju0wuqjUEYp
 vhAU4KdOiul2kz4ZmkcChHEghjpDjw+DcaxSry6ZkRmk5Z66dD06VI44Q0pCp9s+YYOk
 ibWYpgdNPs3T0OJ487ESq18CcuQfJGYjlYXZkaraZtl+Obdn3FLxMe+p0+85Jxm1rISI
 PIfHZbqJvR2Fg2vHTBz9ugVdncSS8JZsUJdDMHZ6DZGg5/+NjdthZsxaoVqFmZ61DYZ/
 SjUw==
X-Gm-Message-State: AOAM530rUMNVpYpi9yQDnZ/XcXQ+xaukYFmpd0l1raL4yslJzvygqyXz
 g6HaJkPiTLjG1MX1/0Vh4UvmIfNfFOJF/MrCeihxYfkBO7Q=
X-Google-Smtp-Source: ABdhPJwBkf6yWkJ0yOPtaL67rdVQlvp4d1AZivekhtl5AMs/yB6vtrnbjb9g1F7uyzLu0+8dGVUJaLqQscVMZ/4BB5Y=
X-Received: by 2002:ac2:5a11:: with SMTP id q17mr4611797lfn.44.1589610071944; 
 Fri, 15 May 2020 23:21:11 -0700 (PDT)
MIME-Version: 1.0
From: David Bennett <daeab2004@gmail.com>
Date: Sat, 16 May 2020 02:21:00 -0400
Message-ID: <CANw4aRjCuLm_Dj17YBxJ-UFLotVi+hZYijiDjkfp-9zv8qM4Lw@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_232116_879679_566030FB 
X-CRM114-Status: UNSURE (   5.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [daeab2004[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [daeab2004[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] Upgraded to 19.07.2 and my file shares disappeared
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
Content-Type: multipart/mixed; boundary="===============4097564858677821342=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4097564858677821342==
Content-Type: multipart/alternative; boundary="000000000000ab720205a5bdef51"

--000000000000ab720205a5bdef51
Content-Type: text/plain; charset="UTF-8"

Hello,

I feel that this really needs to be added to either the Samba setup
documentation and/or the storage documentation:

*Enable also anon_mount in your /etc/config/fstab* submitted by* hnyman*

at
https://forum.openwrt.org/t/mounting-usb-block-info-block-detect-not-able-to-see-exfat-solved/1244/10

After upgrading and reinstalling the necessary packages to get my USB
connected SSD drive recognized my data was no where to be found.

gdisk reported a missing gpt header which it fixed (q - without saving any
changes in a panic)

And in Lede under mount points a weirdly sized partition was reported with
no used space at all (my panic greatly increased)

I had not made a back-up of my partition table, something I have taken care
of now.

As I morosely read the man-page for gdisk and how to repair a partition and
tried a few things without saving the changes, nothing continued to be
found.

I stumbled across the above change to fstab in bold.

I crossed my fingers, made the change, saved and rebooted

*Everything is back,* nothing missing and nothing corrupted. I realize that
my problem is probably self-caused in how I setup my samba shares in the
first place. In my defense all I did was follow the instructions in the
OpenWRT documentation pages regarding: USB storage and Samba fileshares.

Sincerely,

David B.

--000000000000ab720205a5bdef51
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hello,<=
div><br></div><div>I feel that this really needs to be added to either the =
Samba setup documentation and/or the storage documentation:</div><div><br><=
/div><div><span style=3D"font-family:Helvetica,Arial,sans-serif;font-size:1=
5px"><b>Enable also anon_mount in your /etc/config/fstab</b> submitted by<b=
> hnyman</b></span><br></div><div><span style=3D"font-family:Helvetica,Aria=
l,sans-serif;font-size:15px"><br></span></div><div><span style=3D"font-fami=
ly:Helvetica,Arial,sans-serif;font-size:15px">at=C2=A0</span><font face=3D"=
Helvetica, Arial, sans-serif"><span style=3D"font-size:15px"><a href=3D"htt=
ps://forum.openwrt.org/t/mounting-usb-block-info-block-detect-not-able-to-s=
ee-exfat-solved/1244/10">https://forum.openwrt.org/t/mounting-usb-block-inf=
o-block-detect-not-able-to-see-exfat-solved/1244/10</a></span></font></div>=
<div><span style=3D"font-family:Helvetica,Arial,sans-serif;font-size:15px">=
<br></span></div><div><span style=3D"font-family:Helvetica,Arial,sans-serif=
;font-size:15px">After upgrading and reinstalling the necessary=C2=A0packag=
es to get my USB connected SSD drive recognized my data was no where to be=
=C2=A0found.</span></div><div><span style=3D"font-family:Helvetica,Arial,sa=
ns-serif;font-size:15px"><br></span></div><div><span style=3D"font-family:H=
elvetica,Arial,sans-serif;font-size:15px">gdisk reported a missing gpt head=
er which it fixed (q - without saving any changes in a panic)</span></div><=
div><br></div><div>And in Lede under mount points a weirdly sized partition=
 was reported with no used space at all (my panic greatly=C2=A0increased)</=
div><div><br></div><div>I had not made a back-up of my partition table, som=
ething I have taken care of now.</div><div><br></div><div>As I morosely rea=
d the man-page for gdisk and how to repair a partition and tried a few thin=
gs without saving the changes, nothing continued=C2=A0to be found.</div><di=
v><br></div><div>I stumbled across the above change to fstab in bold.</div>=
<div><br></div><div>I crossed=C2=A0my fingers, made the change, saved and r=
ebooted</div><div><br></div><div><b>Everything is back,</b> nothing missing=
 and nothing corrupted. I realize that my problem is probably self-caused i=
n how I setup my samba shares in the first place. In my defense all I did w=
as follow the instructions in the OpenWRT documentation pages regarding: US=
B storage and Samba fileshares.</div><div><br></div><div>Sincerely,</div><d=
iv><br></div><div>David B.</div></div></div></div></div>

--000000000000ab720205a5bdef51--


--===============4097564858677821342==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4097564858677821342==--

