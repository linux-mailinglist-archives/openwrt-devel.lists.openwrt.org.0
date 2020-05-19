Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B241D8D42
	for <lists+openwrt-devel@lfdr.de>; Tue, 19 May 2020 03:49:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CF1XGXfrmrxIefLvERIBDwF34vEHDme/B4YzP6GNTog=; b=YKjUTl8vowBix8P/jyYzrx3xu
	x0ImUUPIJZwjLDyIYhILIh9Mz/A0NQwCvpKCBv3Pkx5ebEk/iGrpn1rC/KCEPhP4OgvvQNMWsyldK
	vHd45nf7Gs1/ObT0/cRcxLCHGW/jBipN9Zgd1oG/MOziMLtXL1IDnmCOkIstif7TJafq5bie4foul
	ExRUWxHiOZYAkm1CHgc5Pnk9+fmzMRXGXsA8EV1S8fOwn92lDI4+XhNvcIeOq8mUnecnGvwS7931N
	5zM+PstT8MsymfP1uRQlpajJjm34qmia5ZXYNCsq2Qg4Nqm2CbYW0rjfWN87yh/NsM8l93n87pjQ0
	1zCcIn/aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jarNr-0006a8-1c; Tue, 19 May 2020 01:49:31 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jarNl-0006Z5-3F
 for openwrt-devel@lists.openwrt.org; Tue, 19 May 2020 01:49:26 +0000
Received: by mail-ej1-x633.google.com with SMTP id a2so815597ejb.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 18 May 2020 18:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=47l5eDXBTWzbdufoD0clJW/ClHwfOv+UUC6ELAFonZk=;
 b=Zev4b66qn42AE0yRVthdleTV4TXsuZwmzeYfVpGD+a4cUnlbrpAzRSCFoQmB95AuH+
 Q3iWkezVQRVuNVocJKFSktpoqOrLP25xUEtBHBo5D8wJtxlQXoud8hZQc8/QsrebrvrF
 cL1plLg+iySF0dFt4OV3WmoRGhdMuhhDDT8wNu5AJmSyky6J9KXUUNyZwjBrwiK5hLqS
 kaXQL0wLZF2gLxrimGAwO51mt3jOtCmsV8qPCED8Kv0t3zz45ij3oDUVLqkYw33m/Azy
 FFTbZoSh8gY/iB3iP76Bw+ngYux6mjpJXrglVBx6WppwrjYmZfAs71F86VO5q1LdtsWx
 VQQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=47l5eDXBTWzbdufoD0clJW/ClHwfOv+UUC6ELAFonZk=;
 b=ciTaljJ7WUGSUkf8UFOkadWiWTvcUc8cSn1L83UwF1cZP0/lQoRLBFwKHbSrPhTEZK
 tIlf7wi1+cjUhCY+BfgISZtX5obUFneK9yIv3FH23nO/SkcMDt2MzbQZUeymwoQ3Q2YV
 PGc92giiG1dn1VwoPpMNHxVP/q4lIwbdm6tk7EnUaSBjPdvY/2ExoOAjveo4oRoMuj7F
 9x9fM6p/8WCPlnRdkNt+91JC1znPhyt3/N1bdgvfi0MjBU1NE7AkAXU99SGSkenD9GEY
 7kcuZVQiEOB5gphhyfgxNKbbAJXc9xs0+hymKPX0XExRpvRbbYmdxF9OYP82SXIyMxxT
 SmmA==
X-Gm-Message-State: AOAM530I3FrfmgUcevKyOwJgVaDTuWz2scJe81w1/TYv4NiRUJTFndVc
 os5eF4SAUX/etCaSPPJJFLpbXjq56JH7LMuv1l5D2B1C
X-Google-Smtp-Source: ABdhPJx9SFIE0EhxxuH+mA+d5TwnFKJKnSqYWvqpm5HJrVXx5CkNgMtEk5OmgTjPL/d9PyRZxQBrny+/a+15StL6yUk=
X-Received: by 2002:a17:906:a1da:: with SMTP id
 bx26mr16984481ejb.42.1589852961376; 
 Mon, 18 May 2020 18:49:21 -0700 (PDT)
MIME-Version: 1.0
References: <CALYKT1hk3-kyD5xifS1QGYE5dy5rR9Jn0HjojxCbe5yDcjAxkw@mail.gmail.com>
 <CAJQUmm6yC5n32pw1PfVX_xJmzSgy0svZQZQRrA0Uyf2GSj6nNA@mail.gmail.com>
 <87mu6ur24u.fsf@miraculix.mork.no>
 <CALYKT1j=15WNV+H54qX=zT8K93GoCvs5h-VUzVvRBmzAGtfrKA@mail.gmail.com>
 <CAAP7ucKtq2tiJRVMFjr5zx=NCG6=-507wyNhP18hm0Y0gAkj8Q@mail.gmail.com>
 <CALYKT1jgbSGaU++m4jbfZfnP=ecivEQ2tFRb6qpd26TZWmjJzg@mail.gmail.com>
 <CALYKT1ibXO1x96TZWxcEhmtTWwPPPFN+WPRwpYfLfULNt_edGg@mail.gmail.com>
 <CAAP7uc+mTnEbE8HSNghweu3uUYG97RrttrP4UuawokA6a1QYvg@mail.gmail.com>
 <CALYKT1jGSUNb1gPKczz8nVY2J84dBZFRY586P+OSnLNTj4Fxkg@mail.gmail.com>
 <CAAP7ucJ5qwJ+4cy_v4sEnULdD9g-D8w=5Ze7d8kubK9RZFLiQQ@mail.gmail.com>
 <CALYKT1hT=0G6ip3__-pttHVr-7Vc1rOUFBnsZFc9jCnx_uu4Wg@mail.gmail.com>
 <CALYKT1h8FF5jQsS7ereCS71rT4aywZrwr+ZjNHSPghQgqx+R8g@mail.gmail.com>
 <CAAP7ucKeVq3N0RJhez45o7g0jkRenPvDUVazRy2CCm3cK64xQg@mail.gmail.com>
 <CALYKT1gNQncwkrLR_Teb1Ak2fYzohd5E0Do79kR+aWA2eVxxkQ@mail.gmail.com>
 <CALYKT1ho94oFRCUr=ujBH1vzZc5vQrTWY1Az91HkKS_F12AivQ@mail.gmail.com>
In-Reply-To: <CALYKT1ho94oFRCUr=ujBH1vzZc5vQrTWY1Az91HkKS_F12AivQ@mail.gmail.com>
From: Jeonghum Joh <oosaprogrammer@gmail.com>
Date: Tue, 19 May 2020 10:49:09 +0900
Message-ID: <CALYKT1jytZ0SmMEWc-84Fjp-oSSYvb+UmR8X3gF4BugVrbZLrw@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_184925_160424_3FBA9999 
X-CRM114-Status: UNSURE (   6.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:633 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oosaprogrammer[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] How am I supposed to change settings in
 /etc/config/network of default root file system of OpenWRT?
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
Content-Type: multipart/mixed; boundary="===============4714861924523840497=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4714861924523840497==
Content-Type: multipart/alternative; boundary="000000000000020d5b05a5f67d08"

--000000000000020d5b05a5f67d08
Content-Type: text/plain; charset="UTF-8"

I know how to do this for /etc/config/firewall.
It is package/network/config/firewall/files/firewall.config

But I cannot find /etc/config/network for default root file system.

Where can I find it?
How am I supposed to change settings in /etc/config/network of default root
file system of OpenWRT?

Thank you in advance!

Jeonghum

--000000000000020d5b05a5f67d08
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I know how to do this for /etc/config/firewall.<div>It is =
package/network/config/firewall/files/firewall.config</div><div><br></div><=
div>But I cannot find /etc/config/network for default root file system.</di=
v><div><br></div><div>Where can I find it?</div><div>How am I supposed to c=
hange settings in /etc/config/network of default root file system of OpenWR=
T?<br></div><div><br></div><div>Thank you in advance!</div><div><br></div><=
div>Jeonghum</div></div>

--000000000000020d5b05a5f67d08--


--===============4714861924523840497==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4714861924523840497==--

