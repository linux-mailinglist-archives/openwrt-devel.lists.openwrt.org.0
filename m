Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1DE3A211
	for <lists+openwrt-devel@lfdr.de>; Sat,  8 Jun 2019 22:49:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qmCT+nJjjSiqF6EJJV4PENmC63tImO/3M6eXYsOEUxA=; b=WFSBBOly/ZMHRi
	/mKjfOLdqfk0AttIl2/HWj4n0X2VNbEmFI0wXNzZUjGvedeyGNHupW5zfy8JgpQvqIudsSynA6xTw
	uo9hi7mV/MX5eFnVJfonh0Ryyp+OWnHP6fJwzn5Kb0mlxQ/QSz03mlOLUZjn0nUtHcTH5EXfrSXvs
	Ym7+MnPGTTL+uZJlwe197s5GMh3URA3SNc/Ih/7yEpc4yLbDrJdCRAaJ8UEseC+FVXnJL2OcWPBS+
	4vga2r/HSurLlMjZ8PL2aaJfji8igWED5br7lkhjyzKHXgTF3Nzi2XZgvDxRTR1ShyM26vahSY6DV
	z5n70tSbma3RbePyiVQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZiHX-0004zO-H1; Sat, 08 Jun 2019 20:49:43 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZiGi-0003rp-L7
 for openwrt-devel@lists.openwrt.org; Sat, 08 Jun 2019 20:48:53 +0000
Received: by mail-wr1-x442.google.com with SMTP id v14so5411483wrr.4
 for <openwrt-devel@lists.openwrt.org>; Sat, 08 Jun 2019 13:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Nds0LhX8tAhIs/UmD34qgTUz4OBaMwTfQsiXTSUrrtY=;
 b=FckPL98ZyAAlP2fwiYD5PrZvh+RJJ+ExMIDDKpihDG8xUqewTzo6zY1DoGYJQlzChp
 KvJrC/F+dgybfJVdqrqgkpJC5xjrlzf1hqE+uEqZuGPT2S9LRZv8M/lWxDEZ8kGv+IbV
 TX24I3pOic7Nhv8ErCJvo39ygYmRB/VkrzJxrGYeAR39lvf9aUzRsWXjZFlifoWCaGtA
 aK35GcJh5yqMQKf2WE4JbLv2BAp+nPeL55x60MkYyuWvhXi+twYG18zXPi84eRMOKUOa
 UyZx8vyqqyoMMGkTD6gf4Fym5o5UUfk0roSOUhWBqVfnwLDcgLH84msBXuq7YxRlz4xL
 B8wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Nds0LhX8tAhIs/UmD34qgTUz4OBaMwTfQsiXTSUrrtY=;
 b=tuIVDJeDFFN4KZhd7o1n91/S/a1L1Hp9UFLBmtsU4SiLuqxps3iANss/7Vsc1c24pZ
 tyo7iqD9d6cOdiem4DMia8Y+mZeFaGlG0Z7pZvdIZ0h4SMLFwkUpBHnQqlWTL2kFNLLH
 uwvAZ8JYjvxGeLG5/HSxVpEiQ5RXAmEn+/qClyjMPosapMXlQkjLn5TXmmLTo9Jrgpg8
 q9STSnzuEmhztgnIlaMu8nHYME/I1hZK3jXNgwdAtzFajuL/uzdObGAfvA1TOxnK5y9/
 oTFNy+eQjKpZKahGol2fP1AZE+QAB5swqdqYGkn43KkIWhvVw15aB2mY+0oOCU+1Xtk0
 tcEg==
X-Gm-Message-State: APjAAAX7lgTWSMhFiWzjlmM2FOrcD+GC84cRx+m1hxGB+GFMThsGzYsf
 6PCmHyu/0mXSc8kB5hCs/tA=
X-Google-Smtp-Source: APXvYqxyiqmModKRNJa2gzhqx+MmQaWTzNO58qfJV3yUsY08DwvAS+YcLp6B+FnDI4NsSoEnA58qKw==
X-Received: by 2002:adf:ecca:: with SMTP id s10mr22013347wro.168.1560026930311; 
 Sat, 08 Jun 2019 13:48:50 -0700 (PDT)
Received: from kontron.lan
 (2001-1ae9-0ff1-f191-359a-8d64-e90a-f663.ip6.tmcz.cz.
 [2001:1ae9:ff1:f191:359a:8d64:e90a:f663])
 by smtp.gmail.com with ESMTPSA id f204sm4986394wme.18.2019.06.08.13.48.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 08 Jun 2019 13:48:49 -0700 (PDT)
From: petrcvekcz@gmail.com
X-Google-Original-From: petrcvekcz.gmail.com
To: hauke@hauke-m.de,
	john@phrozen.org
Date: Sat,  8 Jun 2019 22:48:08 +0200
Message-Id: <478abd4c3d8073e6a20de2eedf22d982b79f2a4d.1560024463.git.petrcvekcz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1560024463.git.petrcvekcz@gmail.com>
References: <cover.1560024463.git.petrcvekcz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_134852_726741_8312871B 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (petrcvekcz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v1 5/7] MIPS: lantiq: Fix bitfield masking
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
Cc: pakahmar@hotmail.com, openwrt-devel@lists.openwrt.org,
 Petr Cvek <petrcvekcz@gmail.com>, linux-mips@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Petr Cvek <petrcvekcz@gmail.com>

The modification of EXIN register doesn't clean the bitfield before
the writing of a new value. After a few modifications the bitfield would
accumulate only '1's.

Signed-off-by: Petr Cvek <petrcvekcz@gmail.com>
---
 arch/mips/lantiq/irq.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/mips/lantiq/irq.c b/arch/mips/lantiq/irq.c
index 21ccd580f8f5..35d7c5f6d159 100644
--- a/arch/mips/lantiq/irq.c
+++ b/arch/mips/lantiq/irq.c
@@ -150,8 +150,9 @@ static int ltq_eiu_settype(struct irq_data *d, unsigned int type)
 			if (edge)
 				irq_set_handler(d->hwirq, handle_edge_irq);
 
-			ltq_eiu_w32(ltq_eiu_r32(LTQ_EIU_EXIN_C) |
-				(val << (i * 4)), LTQ_EIU_EXIN_C);
+			ltq_eiu_w32((ltq_eiu_r32(LTQ_EIU_EXIN_C) &
+				    (~(7 << (i * 4)))) | (val << (i * 4)),
+				    LTQ_EIU_EXIN_C);
 		}
 	}
 
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
