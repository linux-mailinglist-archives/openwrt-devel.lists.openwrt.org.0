Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C5F61B84
	for <lists+openwrt-devel@lfdr.de>; Mon,  8 Jul 2019 10:02:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DVAk9ZKkBhri9xgc0NKhxL81oAipCOnDRV8dTYfnC0s=; b=ho4X2hRAo/egKp
	LCmHDUXxKN8eDthcfc2EuoXE2YKj+akKuPYIuCQVX34lT1qiZ9WjHzqLzUd0kgCU3W185GuCJIaOQ
	8eWraZPtQjiY9TYgfXNGZAOQO26MR0mqxJEL0axIC8QLxVQXoBlsAil4t/4dyqXiXi22W40V/Veks
	VhsI9CkVB+lRa6WOj+e7ZP6RvWCk5mno1UlmUusir2DeKsSslolsJt4MaPR0463+/od/+PcvdB4Q8
	7kyGgF66ZC8TzaJdqTQa/pkAvwQVBLRG2Tg3cAoB+q2tjOd36xayiYDRZiyIJWCs9Al0lTl17Y94D
	dZ1k1/3QCrlNXQ6AA/9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkOaa-0000wu-SZ; Mon, 08 Jul 2019 08:01:32 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkOaH-0000wE-J1
 for openwrt-devel@lists.openwrt.org; Mon, 08 Jul 2019 08:01:14 +0000
Received: by mail-lf1-x144.google.com with SMTP id r15so10226955lfm.11
 for <openwrt-devel@lists.openwrt.org>; Mon, 08 Jul 2019 01:01:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=8devices-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:subject:date:message-id;
 bh=pGR8gOb42mutJFzzSW2cBKoFAEsBcUF6UUIz1R0EloQ=;
 b=piRRRnDYt7+RFrLsEw8nC5gvcmnixhFQsJBtAf9BTITQEy0NqqHPH7NzAQrTNIwddz
 LbtTLngH64b6hYh1N9s5w31CXsBm+6goJqkQ8fdxpvV/mp80px+c6HcNokzY6sK9n9Wk
 lE+CVuCuW+OK5xsWu/P68OgqO4IsaRVVjFkGI4dvfDWSS3SYK/SQKervP7Q5O5fSvjqe
 e+Gux+N5JOU+N1/XS7L1b86hsPnCy+IqK52DNuYqr5yXJc1DyQUHPApg6bGO0UJPdOcF
 N61lbq79M7xofONDGvSiAnq5gAs15rjhGrHtcTU1dSo1XRT3nLN/PH4Waf+MOd4ThpGh
 H3RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=pGR8gOb42mutJFzzSW2cBKoFAEsBcUF6UUIz1R0EloQ=;
 b=G7pAHdOKMCHH0N1zPLNDB0jafrvtdbKs52HtVXxvJp1xCkw1J/Hyxn5EUqZkKaZku1
 nHod+hLlhe0t6JS7IpDEv0O0hJ6VshnJW54ldQSwdFkSO8f4T1SNxjyvDDV1vl7CPeKV
 G9VComCSvgxFEaJQBjuOMCmCFRWRNMK0leB0yotSe9YS3qC6rhgkof2qihxUdMmFi2yu
 CwnjmmikhjCYpQFhEq2qb0wx2X2dqNEnIGqwjartVbe1WeXrGuoN3zp7XK+n4JUWzEGT
 UG0Mq81Y0rjQtUyNGbWNXNNf1UoS4lpzJ2faksf60uDPqtNCZ1WaFaAH6bt0Rls9a5XO
 BF7g==
X-Gm-Message-State: APjAAAWbJfd+gXM0t2AnUS/z6FB0TFX0mwksl7fvhRFyrOmZqKl4vevW
 WaUujcYmNum2dhl7lAtdDJMlrSIgzvs=
X-Google-Smtp-Source: APXvYqxy2G9RYmjqW0EJ1ZLlqKGm3qyY75uMo9mNbDHx2OtBU1payPmn2vkUkqXP+WYsW0rvDHf3rw==
X-Received: by 2002:ac2:4565:: with SMTP id k5mr8083451lfm.170.1562572870941; 
 Mon, 08 Jul 2019 01:01:10 -0700 (PDT)
Received: from ms7994.int.triax.com (88-119-205-42.static.zebra.lt.
 [88.119.205.42])
 by smtp.gmail.com with ESMTPSA id x22sm2666871lfq.20.2019.07.08.01.01.10
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 08 Jul 2019 01:01:10 -0700 (PDT)
From: Justinas Grauslis <justinas@8devices.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  8 Jul 2019 11:01:09 +0300
Message-Id: <1562572869-9431-1-git-send-email-justinas@8devices.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_010113_692789_327FCD8B 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
Subject: [OpenWrt-Devel] [PATCH] procd: check strchr() result before using it
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

Subtracting some address from NULL does not necessary
results in negative value. It's lower level dependent.

In our case (IPQ4019 + Yocto + meta-openwrt) subtracting
token address from NULL strchr() return value results in
large positive number which causes out-of-boundary memory
access and eventually a segfault.

Signed-off-by: Justinas Grauslis <justinas@8devices.com>
---
 utils/utils.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/utils/utils.c b/utils/utils.c
index c5b9513..8d76129 100644
--- a/utils/utils.c
+++ b/utils/utils.c
@@ -150,8 +150,11 @@ char* get_cmdline_val(const char* name, char* out, int len)
 	for (c = strtok_r(line, " \t\n", &sptr); c;
 			c = strtok_r(NULL, " \t\n", &sptr)) {
 		char *sep = strchr(c, '=');
+		if (sep == NULL)
+			continue;
+
 		ssize_t klen = sep - c;
-		if (klen < 0 || strncmp(name, c, klen) || name[klen] != 0)
+		if (strncmp(name, c, klen) || name[klen] != 0)
 			continue;
 
 		strncpy(out, &sep[1], len);
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
