Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F118DE470
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 08:20:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yzy8IwdKm/IcoIqm5VqJdoeZIGJzq+60/ct+ySKqZ4U=; b=r/IcvdxKBMP3Pa
	l3VGqq0i2QZ6A7bQfgaWD61DxY2GuPmz+VSBG+J4Jr/EKDdJho5FRIZWGPRFOgRDK/ZZRbNPRE9QW
	atrJkEoT9vNRmIObXfyLI5SDOqVIojr3vcM2KWBSNOCATXmuVuAt0PiudEubCqbEO6WMFq8yy9EDA
	HaGmM1kI3jcQbW+S2EVvjlZMaqCtqycZP4s/1opiOdn72xH32spXPH1RwU/8l+aEgroTWoshZG+pA
	Io0ZYMn1fOMLy3WBqL8WAHQnseD9FI5LMroBEdgOFscHoI05yBY+yQMHcZm0Jmo/utO4ilraeBMO2
	pnYp1BJIWjvs6natJOrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMR3G-0002pB-Fj; Mon, 21 Oct 2019 06:20:22 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMR2s-0001Zj-AY
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 06:19:59 +0000
Received: by mail-pg1-x541.google.com with SMTP id c8so2300165pgb.2
 for <openwrt-devel@lists.openwrt.org>; Sun, 20 Oct 2019 23:19:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zAv96a/usZF9M7EE55MchzoFdk5Lah5f/Y85+0pHCO0=;
 b=oY+VdPc6kltLg3BAW42Ag30lSM2VO3+d+LRWzCmd1GMGb/0a2p0qhy84Izapxz3KN2
 TbDaG/Rj9ziDlqsc5kfGSSgMueD0e0UGulDuc/eMwXo4eUGhrrqL6Bl7K4o2t9FXff/s
 W+OqjJ0jZ0Eh3DjwNbxF/4C0F6CNM2JZRS4P1NHgCdzOtuRaxFtPGc8/3G84+siuoqiA
 919x7rzDaJlGUQB8z+jHq7ddp/BR/DIsAAyuNHC6c3v+aU4gfo3a3/riaZVFd+gEv6rU
 S90LqSsD+D/VOeYanleKSVZ2ggWOsMzBTvZIpuO6qM5kaRtNNKUTqOIENXWzuNdGXJj7
 h7yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zAv96a/usZF9M7EE55MchzoFdk5Lah5f/Y85+0pHCO0=;
 b=Q180jJyrl6+gB+2RKWJEyTABvuLD1dUZzj1b1tovMiRsGx/urNaOrzggzuWHrwY3Fl
 +Z1E4r9J4fl6LfWl/AXp9raudOvzaDo6ltBxUYSsZ/sQo3X6ICicdkleUPgQEOkgbDZh
 8Yj5fY4ZAEA+I0V3eEYgyoCdsuzZhs9s+elzNRUO9T3SGfFATVVIP4MyW3biMbcj7blH
 E+mkH8sAuLrm905s7HYp5OLWW74FeUCTH1R70xm212qJL7ZSyLcEbiYx86THxq0i2F1W
 sydLCOxJB4DX8ZN4XMskw/XautE1gHcPOB0HPjFZdqNiTx4uUpRVJ2RO7jDgFfInLIi+
 NKQA==
X-Gm-Message-State: APjAAAWbLJp/GFf+gDP9uuNotVD2sH1r+aIaRkxKrn/kuvr37fze9PSf
 cl70pk7jXW6chg7RP3Dm0+g=
X-Google-Smtp-Source: APXvYqwvvCHEKLC3LIkV7LEBTOZ1GrVeUjYCpllBZjTclTfxmptSBQszau2UkVXlopK4rfU00NlUFw==
X-Received: by 2002:a17:90a:c684:: with SMTP id
 n4mr26891524pjt.33.1571638797137; 
 Sun, 20 Oct 2019 23:19:57 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([47.244.19.249])
 by smtp.gmail.com with ESMTPSA id b22sm13524784pfo.85.2019.10.20.23.11.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 20 Oct 2019 23:19:55 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: jo@mein.io
Date: Mon, 21 Oct 2019 06:10:25 +0000
Message-Id: <20191021061031.81230-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_231958_372697_81360B19 
X-CRM114-Status: UNSURE (   5.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH rpcd v2 0/6] memory issue fixes
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>, ynezz@true.cz,
 openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

v2 <- v1

 - Added two fixes suggested by scan-build result [1]

[1] https://ynezz.gitlab.io/-/openwrt-rpcd/-/jobs/323420230/artifacts/build/scan/2019-10-17-075741-163-1/index.html 

Yousong Zhou (6):
  plugin: exec: properly free memory on parse error
  exec: properly free memory on rpc_exec() error
  exec: alway call finish_cb to allow plugin to free up memory
  uci: free configs list memory on return
  file: exec: properly free memory on error
  main: exec_self: make clang analyzer happy

 exec.c   | 18 +++++++++++-------
 file.c   | 18 +++++++++++++++---
 main.c   | 10 +++++++---
 plugin.c | 13 ++++++++++---
 uci.c    |  2 ++
 5 files changed, 45 insertions(+), 16 deletions(-)


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
