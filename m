Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 346C6122DCE
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Dec 2019 15:00:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KdbnGhkeFWOk2889b+AndXgopA2EQqLsViEtL7jciFY=; b=Lv/
	yaAqReAripExuBFkm2s8va+Fu2t+cLU45+ZpAEpjAcBnokeY1bRzlfGhMrUm+UD2WPIxLr4ehPC6Q
	JB7uYVwH4UOYTLOXFi0nFeuBK3XQlZeGW5K4yLvB5UrSSxDjNDo8A8kNCkDBobIIC0YPPWBUDAPLF
	0ab9jap4vhLiMva4dL5AUlsySQqdLevLmFRcEC7dmmQXtGLxN/sutd5tkoCi0IW7BcfIguS05t2z2
	+EyC8OdySQaQ1VuX8pxNhkhgKgdHFyBEEiTsKD3F3KqK5Gea25L9WWVeUEVcKQyfOxVgkTuO1GM3O
	snA6ANtyD0aDRv2LgasakmsQ1OWlsTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihDOA-0002Xf-4H; Tue, 17 Dec 2019 13:59:50 +0000
Received: from mail-io1-xd32.google.com ([2607:f8b0:4864:20::d32])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihDO3-0002Wm-4a
 for openwrt-devel@lists.openwrt.org; Tue, 17 Dec 2019 13:59:44 +0000
Received: by mail-io1-xd32.google.com with SMTP id b10so11052107iof.11
 for <openwrt-devel@lists.openwrt.org>; Tue, 17 Dec 2019 05:59:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=ZeXW7zX+Omgk8ikX+p551sd8bmry+ilKNWf8tMPyayg=;
 b=ADgFrHFlvRcKUWHRz8a7xNlcRToUH93T10HKQ/mhD5zfTzomzpQz1wT9aY/VPc7LhC
 YhfgZCx0/9dogQrIDOtGKzyQOw7X3CQhqYwdFAQtsvopZMslEBGdwilw46v0F4h+L5KK
 qiTRmDGGdC3/DV70rGTeu9PKXzDV4/4Pwvp+U+zeSKIipTMitrljVCpZtb7Qw4d2kJTf
 DQrc2O/Yj7ArgLUKE+I+2v8qOmwgMt+D8UaEykNrFKJpzW8VdmFffYulWFKyxUcDpvNI
 M/sJ4zQ2Uf/iC8vEs9Qt7vIYFll5jO7vDEayOvFTdUScU6ialNZFZ1GBVy2+5ofPp7eF
 GB1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=ZeXW7zX+Omgk8ikX+p551sd8bmry+ilKNWf8tMPyayg=;
 b=gDB3XF9Adp8Xcz9Ul3bCykhXnR0PIIB5kfIGpZnd4OiMyBfU0PwJSyWdbHDuIgk8LX
 sJ6slcEFubatlH3JycbZOHOuARm6qndMp1Gew7EQnohhcZsgNdfPyc+jWDVBSsnMnPaP
 4oC79PxzxTFK39hNM/0R2y9G/wlBUqPlDGRbdAD40kAZstU0rGwRwyc9ECnV1awBgJPZ
 pxhNaYgUvMz4Vy05Nx5e90OJlre8eOU4vJ0N8Qoadg+Fn9DtfwOTTyJ9oIDHyNzT09CA
 j85/wicv+eZ8nopwhKcUe0Lq1h0sC1PzKfA4EprZ+Mn6PKmlA3g0an6sF02iXimNfapl
 wCww==
X-Gm-Message-State: APjAAAWq73OhQvAOR9poSHsBYnWDH94iM0ihRXZ0z5A6k3bAA6JqLhx9
 nBEBLb47Ic2BEnVFp0N7z16o3dj8uvoPadvPP2vKh7zB
X-Google-Smtp-Source: APXvYqzHQgsG6l1GVaUPiYvHcNEuwQ86WcfN7eK4kdXwjEuT5f6YMouSWsUdZKqGrP1icwl7CgbVFJSCWgv5NoGgTEc=
X-Received: by 2002:a02:380c:: with SMTP id b12mr17491258jaa.116.1576591179869; 
 Tue, 17 Dec 2019 05:59:39 -0800 (PST)
MIME-Version: 1.0
From: Imran K <gururug@gmail.com>
Date: Tue, 17 Dec 2019 05:59:28 -0800
Message-ID: <CAA21KT99Eevnj=1eqyT7YbvHYhRp6G+sxd-gEmjpJ=f23UGUmQ@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_055943_180407_FE14ED72 
X-CRM114-Status: UNSURE (   3.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d32 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gururug[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] uboot-env-tools be safer
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
Content-Type: multipart/mixed; boundary="===============7458504932916474950=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7458504932916474950==
Content-Type: multipart/alternative; boundary="0000000000003b79ba0599e6bd70"

--0000000000003b79ba0599e6bd70
Content-Type: text/plain; charset="UTF-8"

uboot-env-tools: Check for config prior to append

In the rare event a pre-populated fw_env.config exists in the rootfs prior
to firstboot, calling fw_setenv after the system has initialised will
annihilate the devices environment due to two identical lines in
fw_env.config.

Check for existence prior to blind appendage.

--- a/uboot-envtools.sh
+++ b/uboot-envtools.sh
@@ -31,6 +31,6 @@ ubootenv_add_app_config() {
  config_get envsize "$1" envsize
  config_get secsize "$1" secsize
  config_get numsec "$1" numsec
- echo "$dev $offset $envsize $secsize $numsec" >>/etc/fw_env.config
+ grep -q "$dev $offset $envsize $secsize $numsec" /etc/fw_env.config ||
echo "$dev $offset $envsize $secsize $numsec" >>/etc/fw_env.config
 }

Signed-off-by: Imran Khan <gururug at gmail.com>

--0000000000003b79ba0599e6bd70
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>uboot-env-tools: Check for config prior to append</di=
v><div><br></div><div>In the rare event a pre-populated fw_env.config exist=
s in the rootfs prior to firstboot, calling fw_setenv after the system has =
initialised will annihilate the devices environment due to two identical li=
nes in fw_env.config.</div><div><br></div><div>Check for existence prior to=
 blind appendage.=C2=A0</div><div><br></div>--- a/uboot-envtools.sh<br>+++ =
b/uboot-envtools.sh<br>@@ -31,6 +31,6 @@ ubootenv_add_app_config() {<br>=C2=
=A0	config_get envsize &quot;$1&quot; envsize<br>=C2=A0	config_get secsize =
&quot;$1&quot; secsize<br>=C2=A0	config_get numsec &quot;$1&quot; numsec<br=
>-	echo &quot;$dev $offset $envsize $secsize $numsec&quot; &gt;&gt;/etc/fw_=
env.config<br>+	grep -q &quot;$dev $offset $envsize $secsize $numsec&quot; =
/etc/fw_env.config || echo &quot;$dev $offset $envsize $secsize $numsec&quo=
t; &gt;&gt;/etc/fw_env.config<br>=C2=A0}<br><div><br></div><div>Signed-off-=
by: Imran Khan &lt;gururug at <a href=3D"http://gmail.com">gmail.com</a>&gt=
;</div></div>

--0000000000003b79ba0599e6bd70--


--===============7458504932916474950==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7458504932916474950==--

