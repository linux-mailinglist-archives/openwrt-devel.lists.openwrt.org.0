Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A9C10CECA
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 Nov 2019 20:17:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jEagXe3deIMb0PlLDnFged/GVmXXi++oNaxGGNqekLE=; b=ONptjyLG24sMmL
	bonw6LBtXBxISbYz/Fphkhq9apDxxWNbWfn5KPyezauqjMaRmJsvbPJyB59dQKZtqbRAd/tJ3+NbV
	Zk7BrMOkIltVkgKLrvY5ncI7P7K1AQue7yxmae7OIAZK7KCvxyfpWI7BfZerT3kqJbMMaZirFhmhK
	sNbw4jl7UnDzUUQmr5cxKqBj5NNxHLhFhQg71Kuzrr7wxYXo29Hwpcey1EBO5rBV9cxzS2xlGwvUI
	qVH40atYFRwdpB7I9uYjPQKvufICe/uL1BGRIcBAkSQl9o8Fp8bJe6JE56SMlLaBN82CbwarOnxLJ
	vxoWzZaXJotSdYTWMF5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaPIC-0007by-4R; Thu, 28 Nov 2019 19:17:32 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaPI4-0007bP-Qt
 for openwrt-devel@lists.openwrt.org; Thu, 28 Nov 2019 19:17:26 +0000
Received: by mail-pj1-x1043.google.com with SMTP id ep1so12242991pjb.7
 for <openwrt-devel@lists.openwrt.org>; Thu, 28 Nov 2019 11:17:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/U2yxUHbLKuqfLqqKrR4W/FxEzxNNHrsGJN0rkG3Juw=;
 b=OfPEv7iRP/9+s7eUKe72xi/5dpCUhEUpR2GUvTW2KUoAD5DSOiXdMgQfrg+XbzbE1C
 JhXYsHb+p+MjZnm86UU3C1DhSY1yIp3EA3D9xmUq17nZOkUWilG8Q1TMSip1a38nXyVm
 8d3y29vDd0o+DozH7kSRWfsvb6fBOnNfP6pgV21LIC/7KEhZ5vM88WUlXNG0M2hJQtoq
 X1n9WV2zCG0fMUNqhA9SNfdSxtH5rExraugP8pCZmXkACZF2XCmJ+FZ9P0VlXfq147H6
 GxWKy8vJI8BFRsQHwg6dGj1NskHniW7dR8Me8WOgf5FEjd0AIEZy/fslAewwa9QoqnDY
 kKfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/U2yxUHbLKuqfLqqKrR4W/FxEzxNNHrsGJN0rkG3Juw=;
 b=PzoToNW1kztmrHq3TtUBQpuEDg8W8elbw7vQKRuLjiNsGRMJ8BAsVSHNotSuwlQcVt
 Jz2ijCZYg18meu8eOVOQn/1vXmmi37qkHa2cgHb0WTzNq5r5JZNT1hnAf3P1DiocTGlr
 G+A9/Z8/7/n8kwCs/qT0n9B/9y89cr7Qlg4NHUjC+XHkaGijKAL3a5Wlvt6F7lclRpAF
 /z4xmDLBBQqccLe6WTeF2xrUO/318gE0SUBHJnmHUTqFhUXPhFoG9NVmW0qtVFdAffph
 PwWpSC8Py5P718F6NNJuRnP5adn2I4PeMXKI+Ul5fVNYLlIxhQ1BcLaxr2lxczdMfoU/
 VOBw==
X-Gm-Message-State: APjAAAVgbYSYIs9NwH7OD5Pgn9Jv5J9JrqCJiXz9zftOLjD9TnRE9kH7
 ktjkKxSP7FliAGcnZgstANRlSdopW68=
X-Google-Smtp-Source: APXvYqzLkqrcwjM9JKMih2j/NCTV0qVNscDJyFWub6sTPvQ/lLLfIbkvJzR4y2fUkjRCVMDAr/r3aQ==
X-Received: by 2002:a17:902:76ca:: with SMTP id
 j10mr11251980plt.58.1574968643406; 
 Thu, 28 Nov 2019 11:17:23 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id y6sm20198157pfm.12.2019.11.28.11.17.22
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 11:17:22 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 28 Nov 2019 11:17:20 -0800
Message-Id: <20191128191720.5216-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_111724_895055_68E6B447 
X-CRM114-Status: UNSURE (   6.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] ucert: Cast ucert_argv to proper type when
 passing to execv
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

Fixes warnings:

warning: passing argument 2 of 'execv' from incompatible pointer type
[-Wincompatible-pointer-types]
  254 |       execv(usign_argv[0], usign_argv)

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 usign-exec.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/usign-exec.c b/usign-exec.c
index 949e83e..85e5f95 100644
--- a/usign-exec.c
+++ b/usign-exec.c
@@ -74,9 +74,9 @@ int usign_s(const char *msgfile, const char *seckeyfile, const char *sigfile, bo
 	case 0:
 		if (
 #ifdef UCERT_HOST_BUILD
-			execvp(usign_argv[0], usign_argv)
+			execvp(usign_argv[0], (char *const *)usign_argv)
 #else
-			execv(usign_argv[0], usign_argv)
+			execv(usign_argv[0], (char *const *)usign_argv)
 #endif
 		   )
 			return -1;
@@ -143,9 +143,9 @@ static int usign_f(char *fingerprint, const char *pubkeyfile, const char *seckey
 
 		if (
 #ifdef UCERT_HOST_BUILD
-		    execvp(usign_argv[0], usign_argv)
+		    execvp(usign_argv[0], (char *const *)usign_argv)
 #else
-		    execv(usign_argv[0], usign_argv)
+		    execv(usign_argv[0], (char *const *)usign_argv)
 #endif
 		   )
 			return -1;
@@ -249,9 +249,9 @@ int usign_v(const char *msgfile, const char *pubkeyfile,
 	case 0:
 		if (
 #ifdef UCERT_HOST_BUILD
-		    execvp(usign_argv[0], usign_argv)
+		    execvp(usign_argv[0], (char *const *)usign_argv)
 #else
-		    execv(usign_argv[0], usign_argv)
+		    execv(usign_argv[0], (char *const *)usign_argv)
 #endif
 		   )
 			return -1;
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
