Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C29634679F
	for <lists+openwrt-devel@lfdr.de>; Fri, 14 Jun 2019 20:36:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IGFJn1U6ewVJTvPXH9thLDQCGPFTWgvOTF+gdXKWm20=; b=hdYZNZBnll89ct
	leBWzDkZMfWP6ziN7h+fU4Q5w5PI6cUMHcc5z9jz+sBfUtXhn8xjz23Nwdp79cpsxuTxGrxAqkE4Z
	tUqf3I49H/7qhoS3dmULp0+ucUctuFANQlzOtNSelsZacBL2h+EgoZRDkdKVHYHzJJfTkthCCgQzC
	cB6LAwuKKbPtiCifhxPFJIqzDKKLf7cIlkttRHyw6CIcutyIQ22g+b5PEI8A420uPEMSdO2zKS1az
	FUruL1rkOPYA0D3lRhq1SvQDlGZODYAQ7d3evRiD+i6PLLUEf7d5YRhQR9mC4dW48faH7INREj1Pl
	b31MuNhZ4pX/VjDvx+bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbr3a-0002Jf-QA; Fri, 14 Jun 2019 18:36:10 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbr3D-00027Y-AC
 for openwrt-devel@lists.openwrt.org; Fri, 14 Jun 2019 18:35:48 +0000
Received: by mail-pl1-x643.google.com with SMTP id k8so380122plt.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 14 Jun 2019 11:35:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=U0KAvIJWiod0oR87iLYGKXUdgRWxHVfYNMZbCArfbEo=;
 b=nhet4PnN0xT6+sRvv8kzDzMUM7Wm3H6ajZU2avrhWwssU8T86DM1d4KehHE2He5KH+
 ZsGvhXDB+oCzQLD0ELlC0dlyFIKSdmMqQT8lo43qE/snm73az91WF18CyC7rWcuKtsIz
 hJRF6LqdLzpat1hVi9VP0PeXnAOlWlfc4G/prWkhONVEuq/S9LyNDZIPIAcdvTdcpALw
 rQIIL+INO7kUO/cclXldQXUYsa5VjDLdxgMbOCJqEOzNRnl5qnKB+rX8KXoUbQZL2SV1
 TAr2dvwrHfFk+Z50Hhqu3Na7e1rX1jDOSHkLi530mxWAHJFFBilbYrv73py3cpniYmAF
 Z2/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=U0KAvIJWiod0oR87iLYGKXUdgRWxHVfYNMZbCArfbEo=;
 b=Oxb2dRqYbyrXM+1hRlmPQfAUIW8yZbAiwjyl0983yE4bh6gbQpPNZq3cni5ho0WMsY
 0oqM2ylZrxV/1hT545cAssjmbUcTS09o+1HV+2/JEymEVDoW0kcPbeSM6r86q3Tq2q7f
 HsB0ksgmNFk8l0dTQAcA8yoRqcg4FEUGJNrHLfpvy34QKBkw/l3UUlpMqPI5Z02H93jI
 X1ockMn58dunZ1IgV6ArgF5McuMQqmnjsodlNq7UbWbn1NM06PZCk6Gl+z0BGZcSKoz9
 kym86dTSMDVb2pKfci2BezDISsckGOQSlRz4yk5TjhoPYkkznmM+hUaEn6FT5Q8AoqJc
 Excg==
X-Gm-Message-State: APjAAAWACt/E2uFkRwrjR//Z/2R2+Gd7yVT1+595cnrWRcXwjUNICLeD
 0EVkTsvmNjKojEMr7/MtqC0dDTp9dXY=
X-Google-Smtp-Source: APXvYqwN55AC+NKsx/Pldhh7k6SGK8c/VqPGGWi+oT5xocCFzZh9dNTm4LzLq/mp2UWc/Z7RsBTiGw==
X-Received: by 2002:a17:902:6b48:: with SMTP id
 g8mr10067335plt.151.1560537346321; 
 Fri, 14 Jun 2019 11:35:46 -0700 (PDT)
Received: from computer.lan (138019059130.ctinets.com. [138.19.59.130])
 by smtp.gmail.com with ESMTPSA id a24sm3388775pgb.85.2019.06.14.11.35.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 11:35:45 -0700 (PDT)
From: Jeffery To <jeffery.to@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 15 Jun 2019 02:35:30 +0800
Message-Id: <20190614183534.14768-2-jeffery.to@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614183534.14768-1-jeffery.to@gmail.com>
References: <20190614183534.14768-1-jeffery.to@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_113547_365725_4F9280C2 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffery.to[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 2/6] build: Remove directory symbolic links
 when cleaning STAGING_DIR
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
Cc: Jeffery To <jeffery.to@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Currently, a symbolic link whose target is a directory will not be
removed by scripts/clean-package.sh. (In the first pass, the -f test is
false because the link target is a directory. In the second pass, the
link is not removed by rmdir.)

This updates clean-package.sh to remove all non-directories in the first
pass.

Signed-off-by: Jeffery To <jeffery.to@gmail.com>
---
 scripts/clean-package.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/clean-package.sh b/scripts/clean-package.sh
index 6dd9bf7306..035725625d 100755
--- a/scripts/clean-package.sh
+++ b/scripts/clean-package.sh
@@ -12,7 +12,7 @@ cat "$1" | (
 	cd "$2"
 	while read entry; do
 		[ -n "$entry" ] || break
-		[ -f "$entry" ] && rm -f $entry
+		[ ! -d "$entry" ] || [ -L "$entry" ] && rm -f "$entry"
 	done
 )
 sort -r "$1" | (
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
