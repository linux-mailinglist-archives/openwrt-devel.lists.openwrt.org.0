Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 969A911DE66
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Dec 2019 08:07:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1kF7GPJ42GUZVMFOpioPadXQ2JKrvGW7PuLFIIjI1lE=; b=mCQwSgDdg5bLz2
	FNWcOqRoidKFFKnYlSKyPcZrMMr82i7sXIR1LfO2Enk+vJil6JljoMW02zbSxGERvzslUDE11ofqA
	lEnr/LEnBpXKH2cgymzPkYk5hqNILrjK4gy75a39WMqMw+vTmfMQDovWzaFWJTqa217yLLgrEQvrj
	x3tE5VUz1GRIB9g3qwmrF5u98yuHpmN+M6BZZLRzCWtwy+xtdnBvdAIGToi/d9V0OACGrWECDeWyR
	ZbUQnbMD2nNzK1GbLgfJ7vtrTJv0JCfQI/cBDmZi58goJ9XFX/7lRJq7xafArVz93lYHE2KT+qqtV
	WeB+66sJdJbxHVSfLAJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iff2Z-00070M-GR; Fri, 13 Dec 2019 07:07:07 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iff2T-0006zy-Gw
 for openwrt-devel@lists.openwrt.org; Fri, 13 Dec 2019 07:07:02 +0000
Received: by mail-pf1-x443.google.com with SMTP id q8so967584pfh.7
 for <openwrt-devel@lists.openwrt.org>; Thu, 12 Dec 2019 23:06:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xqnUIlaIIc4saxxJYO4/JIMyk5EVcNIjKatwlRbpaD8=;
 b=onUqz08XjwnT3ZVb5OfIrkoWqY4NN8o7Rcu5+RSxQ4Iaf0M8xYDTRLOFNUqVFRV8lK
 /aTyJudyG8Vj5OiK6JowQmR0zbsgAn6s+5InfBZzyjy1zaTwqaGXC8H7m0/vnRYhBgx1
 lfU6E2JSYd8RAPd2JhudgtITretDnZn6zWtV1H21ZaxEXgCCl8s3gULpC1KuFYtiZMt0
 m8HbiEOK4X0SGJh/fxCsRWKz7DTAUkoRAIX4I8GoH2gid41Jx4pYyYONPiE/iPTbhh20
 II+hCFBz75/mR4ccCHvjmgIj9DC8DrAAPlOqK9L9cOsgKZcjBGW8Uql0VFy2h629IeBh
 Ze2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xqnUIlaIIc4saxxJYO4/JIMyk5EVcNIjKatwlRbpaD8=;
 b=P4TelkbHLwIGPNudNFK1TQQiMrrmL6rG8Ddw+c5BeTAC+3DUyE7y9eG4luGjzzWLMK
 uIHZCb1Hu9XzSzR27tlUOp25IOFa6Tk0q+h2mQ1KSnjULoSN4eaoINh7WN5tOzcz2Ufo
 nq+C6hnLDCzn38FopNCk6XRTfGicFlRTnhfLgma398uxWI9I8nfX0QYYQWgz4MdUvDIp
 d7dBH9w53FLJQ1xqkSguOdwHB2PPCqcIFnG3QJo77P8uHyEqVfkIdGgzqE5Vf66Q0HQV
 TcVpRiGv/jezoQdqT2wm08USHHhcFcch9GdTz6YwtDBTFI+FpmO/BS3qw6JuGet7MCos
 Rmwg==
X-Gm-Message-State: APjAAAXrbJk8b9ttS3CRoqi3qPgPlekZyL+cgCW+GYtrm4aOfNM0BDcN
 qXjlXWWAxGCKlGuqi0F3YFY=
X-Google-Smtp-Source: APXvYqyf70mrYH2TruFd0REmCQPGOewc9Hf288lSYtuKjRi0nG5Mxzv+2aNDnGDBKwj6TWqDzPj/BA==
X-Received: by 2002:a63:338e:: with SMTP id z136mr15456426pgz.60.1576220816880; 
 Thu, 12 Dec 2019 23:06:56 -0800 (PST)
Received: from titan.hq.cloud.yunionyun.com ([47.244.19.249])
 by smtp.gmail.com with ESMTPSA id s196sm10326215pfs.136.2019.12.12.23.06.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Dec 2019 23:06:55 -0800 (PST)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: jo@mein.io
Date: Fri, 13 Dec 2019 07:05:59 +0000
Message-Id: <20191213070559.50319-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_230701_562949_955DCFBB 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] zones: enforce forward policy with
 zone_NAME_src_POLICY
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

E.g. traffic entering zone_lan_forward must match "-i br-lan".  That is,
forward policy of zone X applies to those traffics from zone X and to be
forwarded to other zones The iptables target for zone policy enforcement
should be zone_NAME_src_POLICY to match "-i br-lan", not
zone_NAME_dest_POLICY that matches "-o br-lan"

Fixes FS#2525

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
 zones.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/zones.c b/zones.c
index 310583d..f268615 100644
--- a/zones.c
+++ b/zones.c
@@ -317,11 +317,11 @@ fw3_load_zones(struct fw3_state *state, struct uci_package *p)
 		resolve_cthelpers(state, e, zone);
 
 		fw3_setbit(zone->flags[0], fw3_to_src_target(zone->policy_input));
-		fw3_setbit(zone->flags[0], zone->policy_forward);
+		fw3_setbit(zone->flags[0], fw3_to_src_target(zone->policy_forward));
 		fw3_setbit(zone->flags[0], zone->policy_output);
 
 		fw3_setbit(zone->flags[1], fw3_to_src_target(zone->policy_input));
-		fw3_setbit(zone->flags[1], zone->policy_forward);
+		fw3_setbit(zone->flags[1], fw3_to_src_target(zone->policy_forward));
 		fw3_setbit(zone->flags[1], zone->policy_output);
 
 		list_add_tail(&zone->list, &state->zones);
@@ -659,7 +659,7 @@ print_zone_rule(struct fw3_ipt_handle *handle, struct fw3_state *state,
 		fw3_ipt_rule_append(r, "zone_%s_input", zone->name);
 
 		r = fw3_ipt_rule_new(handle);
-		fw3_ipt_rule_target(r, "zone_%s_dest_%s", zone->name,
+		fw3_ipt_rule_target(r, "zone_%s_src_%s", zone->name,
 		                     fw3_flag_names[zone->policy_forward]);
 		fw3_ipt_rule_append(r, "zone_%s_forward", zone->name);
 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
