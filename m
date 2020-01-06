Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C1B130C0E
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 03:23:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=esxdCDTmRluvI2XItXbyGKWWWYvtYhkdGLTyTVAG8XI=; b=GmU2Dq2DqQHela7GzmHV6PY1In
	RRQVN1OwrL4acqvEUT2pB2hA1XU0pE/2ozYsKf0+iLjibhDboXsgFHB4oTPNyuthKR8Ej/XGeM6/Y
	J/fgHOsWqZKpPGsGqtiO4WwIbeUnOdiY8RedNsd/t7DOpLOPJkJUi2OJKqvPMEpGPsccR6WVXJS2g
	2+lHBnHN02fesGHrRXqzjTFa+o1v2IeA+BZaP/iBhmthqT3j7MGrKnxp4UT1NQ+Hv/4pX2d31Qm5N
	CvgXVxqrQ00S/uluETm0keNd92Q+EGgi5Owy0rT39Q3VD5/ceOtVDgwzgTjjxUCByqvbEPkLOPcQx
	JZldGe/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioI38-0005gt-08; Mon, 06 Jan 2020 02:23:22 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioI2n-0005Xa-6U
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 02:23:02 +0000
Received: by mail-pf1-x443.google.com with SMTP id i6so19392161pfc.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Jan 2020 18:23:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=1jC8HezPSCqQnB4k5qgCnQf0UThMLBr/QX/wLdp8oTA=;
 b=it+VBZpf37zEe2IpQqY3DIVB8QE26qg3nsGps0Ro+T1glDZ3BlQUvEhPTWlj8E6Din
 u+SRr7ku/qksrY+M3sMA++BcDCH+4MOKxwVU871cGLOTTdgk7X8h4n0Llo0J9W3ok1Ep
 InhncXI0974iDFfjTPxvUL+e9w16AJdogMBiKXdZJMjUnIoQfXAMb+zKFGx7kK0omA4o
 izdWZLqT4/tzQy9vT2yNGgOKKB7oTd6DxEYmnaW7EJNNJO+5MkujB/oye3Mtay4iYliH
 QYAUNfl2/rSJHYoMAs4JpzcZGXVO7fn6W/em6s/QeJfrO8k2dp78fDzQSEDJYTNHdmI1
 r0Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1jC8HezPSCqQnB4k5qgCnQf0UThMLBr/QX/wLdp8oTA=;
 b=HHGI0WnH+Te4hkpOBD09AmyWDWERZbVtydaJ7hR0n6ppsLLoS/IsNHXCr1SlgdR10K
 pcNewYL+iWrDvjoDziGUF/aDGALvUsITQtpaqz0Kq7RHZ0bVoI2CSIbA4fUuTI6hNCHt
 l2Ft9fL9RDBY6kz2NB3BGvyjSE8zcV9SCC37aVkfoS1ni/BqSsgG/G4uY8/EhYnHZYw/
 oKBkeqQb6Rl7n+HAvC0E+qn/9x6nDCkiTSixd2g/6SDYky62uXBXnbdfvFjja+B3KNwu
 WIq8FDpKCB4y5hxn0smASqeiBok8fEGyJaz4sCnoSFTHhRquewWH5bOpo+3VeWY0zHBg
 QJhQ==
X-Gm-Message-State: APjAAAXsErcnO3s1USy3dYD8RDEyC0d3vSPenASlvyxFe7YAGVfc7t1q
 C+gXswwdr0Kzpx1a6GYpwR6TvIJzL+c=
X-Google-Smtp-Source: APXvYqzbYbmkZOS7iPBbEcgWYuhDM0X6DpFvASI40zXxuHzm72E/WO6Ax9XuwCgCfOFRlyG/VaVyNw==
X-Received: by 2002:a62:148a:: with SMTP id 132mr44350463pfu.158.1578277380188; 
 Sun, 05 Jan 2020 18:23:00 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id q25sm76539428pfg.41.2020.01.05.18.22.59
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Jan 2020 18:22:59 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Jan 2020 18:22:55 -0800
Message-Id: <20200106022255.169318-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200106022255.169318-1-rosenp@gmail.com>
References: <20200106022255.169318-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_182301_265123_C9596C80 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 2/2] scripts/gen_image_generic.sh: use
 /bin/sh
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

This has nothing bash specific.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/gen_image_generic.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/gen_image_generic.sh b/scripts/gen_image_generic.sh
index 527ca5bacc..5162be11dd 100755
--- a/scripts/gen_image_generic.sh
+++ b/scripts/gen_image_generic.sh
@@ -1,4 +1,4 @@
-#!/usr/bin/env bash
+#!/bin/sh
 # Copyright (C) 2006-2012 OpenWrt.org
 set -e -x
 if [ $# -ne 5 ] && [ $# -ne 6 ]; then
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
