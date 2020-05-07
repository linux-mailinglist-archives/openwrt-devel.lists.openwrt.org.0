Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA5E1C88B0
	for <lists+openwrt-devel@lfdr.de>; Thu,  7 May 2020 13:45:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JzMzvcd4ilBPdOuRQbRxDFQj60ur9s5VcAC+Txr2MTc=; b=rCH
	RRyi8Q+XEtwhvNkQ+1VVlc3PLyM3brvTv97M28fxs53XuL7RVYGPUE2SsNJBfXb9V5H0v4JKP1lQU
	hfG1HBeokGI6XiUtW7GoYIc6Py5x7VdvE6ruKUr/AtaDhHxslxRt7g879VhRO+nlEN3/15Up78A7Z
	YsRgToCOwdyEjsCVv8jlufGmAWe4rv2veNW6TOv3r5envDeX3MaknisusuPT/NWRg7or3Df5XB3Gr
	WI64yRSIReUVpUe41SiZFc7mpZsdhWVpkLQkyABZ9oVn0xZDfBVGt0RGsWiUkwfdlE8CR0ezGm4Ws
	OJSU9fTD6vucfWMiXhvEq2JeV6bGkIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWexV-0000rU-Hx; Thu, 07 May 2020 11:44:57 +0000
Received: from mail-vs1-xe33.google.com ([2607:f8b0:4864:20::e33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWex7-0000lF-Qr
 for openwrt-devel@lists.openwrt.org; Thu, 07 May 2020 11:44:35 +0000
Received: by mail-vs1-xe33.google.com with SMTP id a5so3140157vsm.7
 for <openwrt-devel@lists.openwrt.org>; Thu, 07 May 2020 04:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=7ehL7r71fwKv3mTWpJ+xhYXN+8ASGYc8HUz16sk1iHA=;
 b=hMwsFP+bAGEz9wYsg7sDUUhyf66xGal1pJogrBh7rjHuheHjspX7o4RZwnX+cxOpA3
 s4GSrgOpxijxxpIml9txFOSxGVz+96izfIQEsziM7yfcopykB8YsBMjz+HISJ/J6jl+p
 TZrFg00y2LbjFmhhrAQXL1dLSazEo/iWbIIgVi1O48fU7+/onnt/VYMvLPZAxXMdFmLP
 HX1BbCcvbZ7XsiTQtB2U+S2KUrgu1DkalXNeCg8ylRZsqnUfo++RYdR3pTSoXLGfRbKa
 xU4G+RojamZIWh5mZEuAQxQaa9iQ+0sen3ur84dHAciAIscQdM2/9c09lFxp3F5VZs52
 xUSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=7ehL7r71fwKv3mTWpJ+xhYXN+8ASGYc8HUz16sk1iHA=;
 b=SnwDlRdjUZFaayc3GeBAXxFCclJ0u0YAJEZDup120jwom52waFbjuyRpih4TqmgMAB
 JV5cy8TSMc80+eDdvpiWy8bgQ0GreW7NUks2mk0PSztWcrEZLJ96oY36iPsVMSniWqGM
 OgVTWYxX0+UTCB+cuDh4P8oZKGhmlei1ZQzZmgEOmr0jS+UjYwmlvGy+33LukhlG6Zl4
 btGBr73pv3E8cAbDZ785JKldVYecU/+CFT4fWhWbfAPDIKAjozQZbINsC6LJak7iAI2f
 nODgOXJf2Cu1LCExJ18jUvAK2CEwSYmT2ywBiLTsYfrtSbYQrIdngekahrV3mWEqajep
 YPMQ==
X-Gm-Message-State: AGi0PuYp/bNnbyBl5BQ+FDX7LalRACkDE32tK1zyRnqg8XIDVs6m914Z
 Kn9UBo5o1GT6K7lnwHOVScd6xxnzJL1aqgba1G4EVKoTvSQ=
X-Google-Smtp-Source: APiQypJCutZWfV1gILTtnfPcuKFSPHAwdDuLOzr3qgcjTG/c+qwGt5Pyx3V5M9+riSb/OCbajf9HkQaD5djMGTP94Gs=
X-Received: by 2002:a05:6102:407:: with SMTP id
 d7mr10927459vsq.159.1588851872323; 
 Thu, 07 May 2020 04:44:32 -0700 (PDT)
MIME-Version: 1.0
From: Ratheendran R <ratheendran.s@gmail.com>
Date: Thu, 7 May 2020 17:14:21 +0530
Message-ID: <CALM_QrW_gZBJM1bZ0W-qDcTWo=29uYci=vAU_afL9c9zUX8-FQ@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_044433_892164_4E31BE27 
X-CRM114-Status: UNSURE (   7.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e33 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ratheendran.s[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] about openwrt mtdsplit usage on other embedded linux
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
Content-Type: multipart/mixed; boundary="===============3181232315779716575=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3181232315779716575==
Content-Type: multipart/alternative; boundary="000000000000735d2b05a50d6767"

--000000000000735d2b05a50d6767
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

We want to use fit images for our embedded system, the default one using
the ramdisk works for me. we want the kernel to be configured to mount
rootfs included in fit image not the ramdisk approach.

I came across your FIT  kernel patch and found this interesting.
https://github.com/openwrt/openwrt/tree/master/target/linux/generic/files/drivers/mtd/mtdsplit

so I have some question, I am using 4.9 kernels.

- can we port this feature on our embedded system project
- does this mtdsplit boots fit image and mounting the rootfs from mtd
partition .
- steps to integrate the patch into the kernel 4.9, changes to be done on
the dts files if any and bootrgs requirements etc.

Thanks for the time.

Regards,
Ratheendran

--000000000000735d2b05a50d6767
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi everyone,</div><div><br></div><div>We want to use =
fit=20
images for our embedded system, the default one using the ramdisk works=20
for me. we want the kernel to be configured to mount rootfs included in=20
fit image not the ramdisk approach.</div><br>I came across your FIT =C2=A0k=
ernel patch and found this interesting.<br><a href=3D"https://github.com/op=
enwrt/openwrt/tree/master/target/linux/generic/files/drivers/mtd/mtdsplit" =
target=3D"_blank">https://github.com/openwrt/openwrt/tree/master/target/lin=
ux/generic/files/drivers/mtd/mtdsplit</a><br>=C2=A0<br>so I have some quest=
ion, I am using 4.9 kernels.<br><div><br></div><div>- can we port this feat=
ure on our embedded system project<br></div>- does this mtdsplit boots fit =
image and mounting the rootfs from mtd partition .<br>- steps to integrate =
the patch into the kernel 4.9, changes to be done on the dts files if any a=
nd bootrgs requirements etc.<br><br>Thanks for the time.<br><br>Regards,<br=
>Ratheendran</div>

--000000000000735d2b05a50d6767--


--===============3181232315779716575==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3181232315779716575==--

