Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7AB19EEC8
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 02:09:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5pZHotciW4C3XeHbgc+9cUxtqPeq1a+X9fiUCKbzScQ=; b=m+q2uhv9a8nWvS
	dZtY4hagb/qn1RgvR5Amk2tlFYECeRCbwvblaSPkxbtKo+xGuX8gLZALgVzggX9j41mEspTqcqmC/
	quxad87/vNW5DFv564oUX0zfppv7t2oASTY5rjfAKZ5W59rJ1iKGgY0i8LDQ9STr+ng3uCcqjxG4J
	3NsFjTXVFbhH7SZSu6POO385zafn0LhXZqd2Y3o23srGVmVs/LMKeZhK9858V0MChy9Rmj4Wffdzg
	jl0aXDhILe3EwUDVBySlzUSNKu5NHaQ0C4pLkrwst9aJCMhD57IqrDDd0GyJB6C92UPwZWRz1jJlQ
	GuznqzNLm+sZqqhlcSYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLFKN-0000tF-FY; Mon, 06 Apr 2020 00:09:23 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLFKG-0000sw-Lw
 for openwrt-devel@lists.openwrt.org; Mon, 06 Apr 2020 00:09:17 +0000
Received: by mail-pl1-x641.google.com with SMTP id d24so5206187pll.8
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Apr 2020 17:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rV6zAceQ29yRpvfVbjKuIEGJtslBCZHDtcGMH7Sx+ik=;
 b=na5pi4bmrF+8WImTm4J2HkfEFdayrGu1kIc9LMTyxujQRMkX9E3tUvIhyYckauetsJ
 wPvFp06X6FMrtEAEbb49l2QLw7MP8ucX+bhnk8d7FrNFPffQAUm2Z5QO5TRLXyOqOdWA
 OMGremZt1DG+pdpZZFNPBgSBrnhaFldXtDDt69cAyqGN5Osiq6nNV2V8uvGlqaOC1/r2
 r6u8Tpk8oNtYh2hk01ivtg657McMsJ10xjwvwioQXtSAAjIWNcUYy7ytLuENwwQJzBGo
 k9d2jaJ4nWwyNmd3ZGvcoGoXyX+F/EP2KQ2OLoPMkf2Jeip1MFPDtSYoOZetyKS3aTVQ
 QWoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rV6zAceQ29yRpvfVbjKuIEGJtslBCZHDtcGMH7Sx+ik=;
 b=O6116CFiRdUxUtDdXRqoFDMr9p4kpwJMNN9Xl8gjQAgJ9DRvdeBM0T/d0GNKrsj3El
 lYGgdzRI+iIohU57iFkMhfGiqGsJmUWEriSnC3tjJ8AnsmmPZ9dkWa4ie/gswr1b+fII
 CWsDjcWS15foIuI872XJewHw5Ryq8lr4YE8og3DfXmeEgdTcCElMq7Q1slZXpp8I56TT
 8ASWvnmFoJSQ92PQ9trzn8caB/40TWCI2bT4DioRZge1sYqSMtcc+GgLAG9eVuZ2rwsp
 Ey2IhFNqd7azsmXyQsH1bsB/UzHUDFK9LAT/OJwmBoor+Bo+3nKLnMnPoEAaEeKv3/9N
 +Slg==
X-Gm-Message-State: AGi0Pua2IO1JMT3HroKBNQ9UkaYUhz4FeydrVtIaxF5O5WsoKSe2e9RN
 EjlNVkEuRgyWDsEW26TfGTIkCNzg6W0=
X-Google-Smtp-Source: APiQypKo73z2n6nBEpbyTOQq3XTzJBZDkLYm/0K3ZwufilsudKHiufoQ1PBWXaKKikiALPpfM35XaQ==
X-Received: by 2002:a17:90a:a0c:: with SMTP id
 o12mr22461091pjo.80.1586131755253; 
 Sun, 05 Apr 2020 17:09:15 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id k6sm10682620pje.8.2020.04.05.17.09.14
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2020 17:09:14 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Apr 2020 17:09:13 -0700
Message-Id: <20200406000913.681516-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_170916_715034_58581AA3 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCHv3] procd/rcS: cast format string to int64_t
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

musl 1.2.0 turns time_t into a 64-bit value, even on 32-bit. This makes it
compatible.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 v3: Added missing header
 v2: Changed to PRId64
 rcS.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/rcS.c b/rcS.c
index c2e1abb..2851fae 100644
--- a/rcS.c
+++ b/rcS.c
@@ -18,6 +18,7 @@
 
 #include <libubox/uloop.h>
 #include <libubox/runqueue.h>
+#include <inttypes.h>
 #include <stdlib.h>
 #include <stdio.h>
 #include <unistd.h>
@@ -118,7 +119,7 @@ static void q_initd_complete(struct runqueue *q, struct runqueue_task *p)
 		ts_res.tv_nsec += 1000000000;
 	}
 
-	DEBUG(2, "stop %s %s - took %lu.%09lus\n", s->file, s->param, ts_res.tv_sec, ts_res.tv_nsec);
+	DEBUG(2, "stop %s %s - took %" PRId64 ".%09" PRId64 "s\n", s->file, s->param, (int64_t)ts_res.tv_sec, (int64_t)ts_res.tv_nsec);
 	ustream_free(&s->fd.stream);
 	close(s->fd.fd.fd);
 	free(s);
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
