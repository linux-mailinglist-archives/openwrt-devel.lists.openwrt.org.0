Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBD61831AB
	for <lists+openwrt-devel@lfdr.de>; Thu, 12 Mar 2020 14:36:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2FuL2e6ogXjVKTL0hnbLWoSw7zENIi4BREPhrQysxyc=; b=GgSqtzCaGSk4K1
	K6lEfY/Bi0V9E9mL+j+fvP+5j9gAJ6ASFGH5dWqhFzNSTico2XjyBganiG9I03nMG69MY5MhQwNS8
	A/FQ6NSoSgnUaCVEOb5aOt0ohi2Yr1J2R73Gl5dFYysEe52/7EotuQioWh8aV30T2XVnsvZSXrTpM
	9rv2r5tetGKuTIKulJFE4GkzxPEhzxjbm6T02WBk85dw8iFy6GV1Qk+MsD1HyTQifQc6M6MjEgNhK
	vvv30xvvuf7c8/1b7tf2cThznU0xvpOOtTVq8DLBEeVlPmy6ikimkj02RTcNcs6MEOYe8kUQkvxmB
	PfMxAuU0Ykjt/fZKyz9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCNzn-0008Fp-Nq; Thu, 12 Mar 2020 13:35:31 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCNzg-0008FJ-R0
 for openwrt-devel@lists.openwrt.org; Thu, 12 Mar 2020 13:35:26 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id BAAB242812
 for <openwrt-devel@lists.openwrt.org>; Thu, 12 Mar 2020 13:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1584020122; bh=tyJ2rcJpHW+Kb9JI6hbr2d3f6O/X+A8S1n6CObsifUc=;
 h=From:To:Cc:Subject:Date:From;
 b=WYsV2MGy+KV5qoWRQpwaMWXOUw/VbqyG812Bp8HkoWPdoYH5Wo63gwqft/oLc+Uaq
 3fbe1DRhFYvXJjXPn41rSyq8rMD/lXf8IzGD4Va7mw0FwAaIcwwPUy3cyreXLkZSHZ
 B30PzAGWI9cUWFidXcm/VFyf/xVirNLCGnJUGmobE31KMiD4J2RUN3Jf4seRk1fm+M
 xNTjJD+SubAw2VdhSR174UcOgMf1NTStwkkDRvl/K5ITzcNAJz5SRDogTX+f3Y/t1N
 +hOgPUZtIVFWEK/ADYAbfBo13+vQ7xn9ENMYjUtokJhTeQ2C9zmBTFZUdln+By5fGI
 8adKSCYRAGiNw==
Received: from ru20arcgnu1.internal.synopsys.com
 (ru20arcgnu1.internal.synopsys.com [10.121.9.48])
 by mailhost.synopsys.com (Postfix) with ESMTP id ED728A005C;
 Thu, 12 Mar 2020 13:35:20 +0000 (UTC)
From: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 12 Mar 2020 16:34:56 +0300
Message-Id: <20200312133501.17939-1-Evgeniy.Didin@synopsys.com>
X-Mailer: git-send-email 2.16.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_063524_875571_00085AEB 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 0/5] archs38: kernel 5.4 support
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
Cc: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch switches kernel version to 5.4 for archs38.

Evgeniy Didin (5):
  archs38: add kernel 5.4 config
  toolchain/gcc: make GCC9 by default for archs38
  archs38: switch to kernel 5.4 by default
  archs38: remove ath9k-htc package
  kernel: update arc-specific patch

 target/linux/archs38/Makefile                 |   2 +-
 target/linux/archs38/config-5.4               | 309 ++++++++++++++++++
 .../archs38/generic/profiles/00-default.mk    |   3 +-
 .../332-arc-add-OWRTDTB-section.patch         |  31 +-
 toolchain/gcc/Config.version                  |   1 +
 5 files changed, 332 insertions(+), 14 deletions(-)
 create mode 100644 target/linux/archs38/config-5.4

-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
