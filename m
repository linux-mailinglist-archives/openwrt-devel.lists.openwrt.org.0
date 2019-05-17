Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E652167E
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 May 2019 11:44:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=n925gQAmI6B4Van+I+/p07MSQk7fntxqzgVb106BbEc=; b=HR9
	r47e7mL8wKK4oT447YnQqfySgEa8PnEleASKq6ZpEwVCyzcjd17drxN7ZDRddgIHwFZ5upafJeGHF
	q8VeVYHmkSfaChhiRD62FimF4RzQJ3vHYn/u4Ys+QcgnAIBGvhDhpvoSc0ZNaIub7T4Fg71Q82Aoy
	TW3RjC6JXhZrBCG2/xOdFG5rRynlrp2hoZhjo8KmFasxe6BnvFIK0xCu7KIO/SghmbiNDoJunj8YG
	fezAeQZqPZb99t24Z5wb4IvqF2mJSEsnJXB+JJqQ2vklAw6vQKc++ZgF9B6KAI+EFD5gBptoDZag1
	U1tc4D+mPph/mh1/qu07NijC70cuCwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRZPw-0006tZ-Li; Fri, 17 May 2019 09:44:44 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRZPq-0006sr-9K
 for openwrt-devel@lists.openwrt.org; Fri, 17 May 2019 09:44:39 +0000
Received: by mail-qt1-x844.google.com with SMTP id a39so7278874qtk.2
 for <openwrt-devel@lists.openwrt.org>; Fri, 17 May 2019 02:44:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=1CILfZ9rEtsrpwqqiJNQgxiWti+Wn4wxUMA1cDBQIrs=;
 b=J1V48OnjAm+5o9eKPTchVqzlBOtaXoJfvhW+fNcbTIuGkodm8qrHSKGMAT0M2HFB0O
 3sE7Lz+V8dSH3QEvom6RAZEwFxr9gZ4q64Iyt2M1agfoQO0G3iKiuCR3hTsE40zXpMe8
 QBe4Qe9dcxe5jWo9FOQV3Sefck3fsr0RpRB+iekkyq9gOuQkeOYTDVgkoLQXNu/mdcsn
 wPRHmW8/JExnb6dxb100TaVQZ9TNONfBL6HmNQg8iHwq/ZcmE2RbAI8d/DW468LN39a/
 VWG7YiRAZYOCzxlfCPqWOTikPwDdoNs1VC5lUeH6Fq6lMpNmU5NSpn9OlbyrkyINyGf4
 hwog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=1CILfZ9rEtsrpwqqiJNQgxiWti+Wn4wxUMA1cDBQIrs=;
 b=Kd5Uc418Onc+tnma2pUmKP1ZrAkPKm7JrfLn/5vIEbz3N/999S/hbKgnQQsSMA4GF/
 +zK//vMTeNPaPEJazs6YV7uUZ7A9gKGI5U6wMc3mFtGMfqHPUBojP+7Zj00+2TcLzfXZ
 bTzktEL9yvZ+zJCfD2rRyY8aE4Idd/dkkWAcXByUM93NP7+jMfVB1ELkIjF9ncgaqtZ9
 OCfpHU7LAQnf96+9mtw1Xj1R3whqKQTu3kb/LWtXRExpEqBiIwIg20LJbtUSpj4PsKFz
 thLRTNGUbCXQqgPUfz4IgegOCkWlFxbSW0KkRRaO8+ZlVC8W7HHJoT1vW7pym6TKHrs2
 kgiA==
X-Gm-Message-State: APjAAAWqoDftTrSXUMZwwhZBgl962dPsDlxDlOVTcUB8r8Qx+a8FkzAn
 glMPr2RGcMJTC2EDGDa33eCTfRdH3qIwdwkxW4RitGa6FcbPSg==
X-Google-Smtp-Source: APXvYqwBhDAFqEvzY81Yv6h2MQzsiohiv5UtIWxakRDitSmJjqVq4odKtTdN9czBhf3K39cCKdFQYz+hstiVsgngYI0=
X-Received: by 2002:ac8:8fb:: with SMTP id y56mr47005993qth.160.1558086276673; 
 Fri, 17 May 2019 02:44:36 -0700 (PDT)
MIME-Version: 1.0
From: Charlemagne Lasse <charlemagnelasse@gmail.com>
Date: Fri, 17 May 2019 11:44:25 +0200
Message-ID: <CAFGhKbxxMiTGZPoLr_rHVyano=01=pAMBsW=9M+JKEjKcmwE6A@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_024438_330421_EF1CD933 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (charlemagnelasse[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] uci: test: use valgrind to detect memory
 corruptions
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

uci is currently a highly problematic software and its library & lua
bindings cannot be used without corrupting or leaking memory in the host
process. Every long running process will suffer. The only way to use it
with an acceptable risk is by using the cli interface which throws its
virtual memory region away after its finished.

To notice such problems faster, start the uci testsuite with the
valgrind memory checker.

Signed-off-by: Charlemagne Lasse <charlemagnelasse@gmail.com>
---
Bug report: https://bugs.openwrt.org/index.php?do=details&task_id=2288

 test/tests.sh | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/test/tests.sh b/test/tests.sh
index ee72c31..5312d41 100644
--- a/test/tests.sh
+++ b/test/tests.sh
@@ -11,8 +11,10 @@ UCI_BIN="../uci"
  echo "uci is not present." >&2
  return 1
 }
-UCI="${UCI_BIN} -c ${CONFIG_DIR} -p ${CHANGES_DIR}"
-UCI_Q="${UCI_BIN} -c ${CONFIG_DIR} -p ${CHANGES_DIR} -q"
+CHECKS="--num-callers=25 --track-origins=yes --leak-check=full"
+VALGRIND="valgrind -q --tool=memcheck --error-exitcode=126 ${CHECKS}"
+UCI="${VALGRIND} ${UCI_BIN} -c ${CONFIG_DIR} -p ${CHANGES_DIR}"
+UCI_Q="${VALGRIND} ${UCI_BIN} -c ${CONFIG_DIR} -p ${CHANGES_DIR} -q"

 REF_DIR="./references"
 SCRIPTS_DIR="./tests.d"
-- 
2.11.0

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
