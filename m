Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9BC31095BF
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 23:47:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ADs9rKKajq0a6TpHOEDq4zPxAJq34U+43js1K1Il5b4=; b=EbsWQ4P2P8ycLM0R2iHjvsSW7z
	J3D8lNVTLKzm3gl8i6S14DsfNFB3b9pSAB9j/32NiSqKrxGDynaNwm0HHCSbqVHmNhNcF6Oye1LLC
	D15m+wGa1+IWxOktSeKCRBc1tS+dxAomiKA26QTDnOjDHz/eHr0QGO8Iszuc20Bouv0apfxLFMDZL
	jaBctA0ZebJVfdmSOVaypfJ0PblwlApNcgAxwusy41EV8/PSJrSIutaK/S2sC5fGNcekcp7RA6kRg
	LgAGozoUy43awobgwI/1DxlG/lVx9ps8JQQXoQmS4FE4suc0lsSsVjdi67iC/H9f4/iM/kB+jSdzM
	iCf25UXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZN8O-0008Vd-RR; Mon, 25 Nov 2019 22:47:08 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZN6X-00067G-Ku
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 22:45:15 +0000
Received: by mail-pl1-x642.google.com with SMTP id j12so7158515plt.9
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 14:45:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Bvsw+mXb6X2E/PKg4nSEphPbnkUNCC9dkfslMirx2ZE=;
 b=LnskaRRQa6VqVp6awqvNFHDqX1EFY2DzO9uL3TWfJJzwAtsgpPECG1YAP8LsFABOMp
 uJTpyoFqALRCO/sR++Yo3pxD3FzC0d1ozNCsya7afKs1c3nfOmYrv9yLpkCk+S4/Dbgm
 zffW0iqOWUaXRgRhfKGLEZIrQ8h6/V7IQWznBISzfmKw0GWRGZSPbV4ebGceWVfmArZa
 cXK7SNJgfTuYFuAYgflFIcJufPDv3Q2ZmTwGHSiFBkDVabQoHrQJEXTIXTHgn9BSZTMv
 7ttytaGlDpJrG5RpOIyYKZSJHkJGyLpwDamrRAvGdCc0A5MksQhyzS5/grbOMutZpifu
 drJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Bvsw+mXb6X2E/PKg4nSEphPbnkUNCC9dkfslMirx2ZE=;
 b=b5yRUIXEpOLtX7fTt4Tj9u4hslheMMLaxzjQrm6RGK3wGxA+v085LO6M4gYWZMgyiM
 xxpbzVsumu3ecirG0qybVe+E5fdHsGAl+aQ/Mt0TF2roW3MgqsW69/dvEoPa1eNiLl5i
 2EhjygDavOweqb2OH7Ss48jBstvKMcHVuP1pVSDC7fiiMSrG/fPqPCqa6qxy5unNMOq7
 zLdZi05oxK3XAc7XJzyHP+vJs7ZxkKI/xJvu2MvU48xJHECdCd9C8ct5A7rHg6j2+Lu6
 shCYB6OOmSZv4oE4WJviL08bXb5v2GovANgx12NFu45HiduftifzJTeBGPbqeoE2gpuN
 zNgA==
X-Gm-Message-State: APjAAAUvDUj6ekhoEUJ51CmcacqYxlCmcXim2YmyEcNsDL4rTgPPfeWI
 j1u3+S/omCSYVYZOPORBHjAD6Ut3DEQ=
X-Google-Smtp-Source: APXvYqx/VDeA1jlGUCOcNty9pkaRBpgeeCKjtZMgBERb6EumSjxJAHRuvaS1R/6QTDtWp0ZeBTag4g==
X-Received: by 2002:a17:90a:c082:: with SMTP id
 o2mr1996833pjs.94.1574721912326; 
 Mon, 25 Nov 2019 14:45:12 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id gx16sm393947pjb.10.2019.11.25.14.45.11
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 14:45:11 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 14:44:54 -0800
Message-Id: <20191125224502.266177-9-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191125224502.266177-1-rosenp@gmail.com>
References: <20191125224502.266177-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_144513_697405_423EE680 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 09/17] mxs/image/gen_sdcard_ext4_ext4.sh:
 Use /bin/sh
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Nothing here needs bash.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 target/linux/mxs/image/gen_sdcard_ext4_ext4.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/mxs/image/gen_sdcard_ext4_ext4.sh b/target/linux/mxs/image/gen_sdcard_ext4_ext4.sh
index 99bd3bf573..20f3331bed 100755
--- a/target/linux/mxs/image/gen_sdcard_ext4_ext4.sh
+++ b/target/linux/mxs/image/gen_sdcard_ext4_ext4.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 #
 # Copyright (C) 2015 OpenWrt.org
 #
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
