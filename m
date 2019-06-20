Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 813AB4DCE7
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Jun 2019 23:40:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qmCT+nJjjSiqF6EJJV4PENmC63tImO/3M6eXYsOEUxA=; b=pZDZNGWjZxRt//
	HCFQKyJWnp1tt7f+oWOeeFts0YzoOztKTUC0yvC6QLwHXzeKJpUyj3s+q1M7XL1Hyz5BKBzUDwVjx
	awIfJs32pnSI44S5xECsAZlZKgOiydiq6uD4KuY0gXVHlUOIisrXcwf1d+gOtH/HwfvmrmjWFYbcy
	yLrsZ1RAcyvWuKB9zHSWZ4YbcKqXlufuOaq8VX7mFRhjLYHFLEPy5J8cGxbydvf7SD7fjjRapXvBy
	lHjC3eF4JFTBrtmKqYe9fl9BqbDq7OEZziEYMzkSrAhuob8f/+x0HufvM6MDG0/nfJ4WQthYYS4Dx
	pWJXbjqx4wZl7aNBCF3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he4ne-0005jn-3m; Thu, 20 Jun 2019 21:40:54 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he4mH-0003Uu-0R
 for openwrt-devel@lists.openwrt.org; Thu, 20 Jun 2019 21:39:31 +0000
Received: by mail-wr1-x442.google.com with SMTP id n9so4544359wru.0
 for <openwrt-devel@lists.openwrt.org>; Thu, 20 Jun 2019 14:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Nds0LhX8tAhIs/UmD34qgTUz4OBaMwTfQsiXTSUrrtY=;
 b=lfd2ehLTjoQsNvCA17H2JkHWxDUKGFpBtGN+tYSfEFrcE8V+KWqjGS90se9wh725gk
 00kovH9yDC+iykuWKKGp3biZPqgr/fY57nJXc8vMPeE/o4sh7gSCvixJ3yVq115ZB7A0
 OhDPJdEzLQly4EyA4iMYl15pIKEQJM+w67sba6WX1G4QU/yeLHw7FUzXKnEtqnAPDxK0
 AJkMOtk8Fp09uBsiyU/InKpD2HcMGDbMJEEEaUxicv2hJLWgR7qBEZ08G2LOheg0xcy6
 MHkIxtPZws8/6An/0Ti/EaT45fw7FXoKL+YlJ3qjBCsNw2xUUepmwIIrqTwyxe8mBxJm
 LkTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Nds0LhX8tAhIs/UmD34qgTUz4OBaMwTfQsiXTSUrrtY=;
 b=pdXOhDqPt5Uxp3Z8UjE/NhVm5aax31BBtSG3wVso0BoG0+FmWJh37HCTT92chc1L1O
 J3Av5PDfSByGfrGHdy331YGcQhhQlzW570MQk3QTcrKR/7sSZtkyM/kxrUr28xuWP8sT
 +44XqnG5JCm939Sbw0QMCL4BDQ4q2nBDQHEfHQqq5GzSzc+ZG+/tOHH3b93CyrFf67tA
 2PpU7XtdxczPtbOm3DDxIgwaUPnV6fFEuhyjAZgMGPbZT0J95riBAuZmP/0YJfXnAj5h
 jVdXPxF2JhMLoaEDoPxf43npfR1Ob4RogUs5RNi/LSqHJFoGGwXO+yrnm2a4hSB4WJOK
 MxGw==
X-Gm-Message-State: APjAAAUqPt+l4EILF9rkXy+S/NRUMFTZ+1dAbZol5t8p/AihaJCdDx+H
 7CbobuO7VJwa67NeGRICn4w=
X-Google-Smtp-Source: APXvYqzWaRmTTNfeH0Sq1+xZZTQ40yGpfNoRE0z9WA7r4xu5sfXGbdK+PEqj6IKRIkwubYMTvkt4HA==
X-Received: by 2002:a5d:4cc3:: with SMTP id c3mr17786342wrt.259.1561066767980; 
 Thu, 20 Jun 2019 14:39:27 -0700 (PDT)
Received: from kontron.lan
 (2001-1ae9-0ff1-f191-ecaa-d74f-d492-3738.ip6.tmcz.cz.
 [2001:1ae9:ff1:f191:ecaa:d74f:d492:3738])
 by smtp.gmail.com with ESMTPSA id j4sm575426wrx.57.2019.06.20.14.39.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 14:39:27 -0700 (PDT)
From: petrcvekcz@gmail.com
X-Google-Original-From: petrcvekcz.gmail.com
To: hauke@hauke-m.de,
	john@phrozen.org
Date: Thu, 20 Jun 2019 23:39:37 +0200
Message-Id: <d1ba41743aaeb1ecdb2df7d4845bd5d60a774f92.1561065843.git.petrcvekcz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1561065843.git.petrcvekcz@gmail.com>
References: <cover.1561065843.git.petrcvekcz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_143930_193314_9716E0FB 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (petrcvekcz[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH v2 5/7] MIPS: lantiq: Fix bitfield masking
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
