Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6733C150678
	for <lists+openwrt-devel@lfdr.de>; Mon,  3 Feb 2020 13:58:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nMQq/Y+uTPDUp+4gE1rzZSeVvccnT/nHctEH+j8cbOk=; b=HotVcV1EE2WEqU
	uZVhNdTMaKLcHdg16spiz7W3Fj4/hcnx1r/5Uuk7VKDlwnWLsJ8edrVc/q8B0Xi4ajo6G5ESqBwcy
	PkwYN6gvKgLZwXR10tobBo/fMe/07vT4OVLyEk+9veNim754xbQCUiDoXuikutngThdIUSA2+XT/D
	hyJXnPNdS7uMeUQALuoc2UWO3G4EVw5entkG4Vvk2k9/r9+/N06bVzqbDdBirV3mDqnUjCYo1fL6Q
	oT3RgzMo5sr3Yjy7r2HUZZmSHvXM1jRSdfTSwybZ90P7JGtBTcMwUPfY/lldrfg1IaugSwjYOwjL1
	CAaZl/SO99jl6PjM4DLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iybJ0-00088N-Q6; Mon, 03 Feb 2020 12:58:22 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iybIr-00087f-Ju
 for openwrt-devel@lists.openwrt.org; Mon, 03 Feb 2020 12:58:14 +0000
Received: by mail-wr1-x441.google.com with SMTP id z3so18011425wru.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 03 Feb 2020 04:58:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=+gEo0h180+oHMqsG+RmTmUe9zLn0+PLFI9g763FK8Ks=;
 b=ABihb9wjt9/8S9O6COM4YNlDJU2AY4DKJPQN0kw1nqaPxCCTLMwqAgW03CaEMwZrIj
 jpBpLReeXt0Uwcqqu40JHgJToTdOJzRhZHe+KPM+CP4+bmaSLbxrsuPszS6pWwQQPB1m
 TpMGPjHYrMP3TfbaIqmk/VfBX7qbQoT0oKopUPN3R9SQmHNrjjYeM6HL37Ft/KDw2ndb
 co8+fXe771Ab8beIEf/stScNxU+BqZfAQxYlxBFwDjfmaCBly/t1ocqdRGHvRgNCwexD
 TkklRDfYrqmhps3XrNTm/K/lwD35X9AdLFrUVEvkcd0eKGGZojRZyMW790PCbYsrobPI
 tvHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=+gEo0h180+oHMqsG+RmTmUe9zLn0+PLFI9g763FK8Ks=;
 b=bsnE8es/lBSw4k1BCjKjF7Z5ZpDZ3JlrPAJOhGoZTOMuxHGDDCxnKP2voaOgDsCSta
 mCl2IGPqTnMe2mGEhnf+TynG78e6L7nryjJX3Poai1klTX6WXUjBKMEc7IveuCd1Nyym
 qTY0yGah/bXOzVCpRfoUJsHJLeBqbRjL4aa6GepM/hwwtkkv1xTX84KXFroA2m6So0GW
 mEmDBs8RcPHwn368Ik02IzyPQRhGh2CqGs/VJyUoNWWVf6hn5RXNu9Bq6UXU3afGx0bc
 4Ojhej2wMMG9Y+4PRvXLIq9acdEO5oa0kRvzw7F4D4XdycT92GAw2/JEq2IbM2326ytq
 mJ3A==
X-Gm-Message-State: APjAAAXmIrAnEB9099riFP1t8LrJbILJSiUBgvxoaSgmEafjPKVcFrXt
 QYRJRX6+1AsfSxCOUdw17B0=
X-Google-Smtp-Source: APXvYqxAJTkSAt1iO4LOxdXQwIKMqg8SngKUkbF79bhbEx5KNvhyHFykK52moEAD71TWXDTfVcRvZw==
X-Received: by 2002:a5d:4cc9:: with SMTP id c9mr15302519wrt.70.1580734690130; 
 Mon, 03 Feb 2020 04:58:10 -0800 (PST)
Received: from cplx1037.edegem.eu.thmulti.com
 ([2001:4158:f012:e40:2a10:7bff:fec5:6f08])
 by smtp.gmail.com with ESMTPSA id r3sm25863179wrn.34.2020.02.03.04.58.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 03 Feb 2020 04:58:09 -0800 (PST)
From: Alin Nastac <alin.nastac@gmail.com>
To: Felix Fietkau <nbd@nbd.name>,
	openwrt-devel@lists.openwrt.org
Date: Mon,  3 Feb 2020 13:58:04 +0100
Message-Id: <1580734684-16319-1-git-send-email-alin.nastac@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_045813_656277_05844F88 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alin.nastac[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH] ubus: lua binding does not allow a reply
 with 64 bit numbers
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Numbers originated from lua bindings get explicitly truncated to 32 bit.

Signed-off-by: Alin Nastac <alin.nastac@gmail.com>
---
 lua/ubus.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/lua/ubus.c b/lua/ubus.c
index 86dcc50..aa01ac9 100644
--- a/lua/ubus.c
+++ b/lua/ubus.c
@@ -196,7 +196,11 @@ ubus_lua_format_blob(lua_State *L, struct blob_buf *b, bool table)
 	case LUA_TINT:
 #endif
 	case LUA_TNUMBER:
-		blobmsg_add_u32(b, key, (uint32_t)lua_tointeger(L, -1));
+		if((uint64_t)lua_tonumber(L, -1) > INT_MAX) {
+			blobmsg_add_u64(b, key, (uint64_t)lua_tonumber(L, -1));
+		} else {
+			blobmsg_add_u32(b, key, (uint32_t)lua_tointeger(L, -1));
+		}
 		break;
 
 	case LUA_TSTRING:
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
