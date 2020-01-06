Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FECF130C0D
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 03:23:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AY0SJorKXlyo6MfBezjCu/A0cb3PtNUj+VSXyuMzgJk=; b=rsjHip/vg/Ekru
	TZn1uoveV4NMH+tPit8EwUvDSR9Uvbf/hbFs8c0tgBEDV3EySTxREvyZBw9BqzRZ5eoIc87P+pZU3
	qOEQgu9D0A7JD8sQp4kil66M6AYiDy6DmTx6HkIF4os+SNvxRBuCs3qnMzcDRkD/jIoj7g0ouypgg
	TnexMQt9SlZZ5CHQhw4/fppnTtIXjoeZiS5FndHvhCRqcitmCU0JikLYYRqLtHutzEY2/rIBdjIf7
	DACOLL7D2KVXWSgNCkbgJhVuiRpAV784EXkwEJvl/1/SdKncfXJLCn/q51UykLr3tgrmEe3U5Mb6m
	j7dYSuLUNsw2YaGTr9Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioI2u-0005YK-JC; Mon, 06 Jan 2020 02:23:08 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioI2m-0005XB-22
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 02:23:01 +0000
Received: by mail-pg1-x542.google.com with SMTP id b9so26139463pgk.12
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Jan 2020 18:22:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wTcviqiBfirlh6kZs0CnQvv7l5BK6wQ3RIRWOrNoLAA=;
 b=deWb1OlJjmPK01CrqsSdR0ztK4mms+E0t5glprjFgUvmR3gOsvVsCcZDjge72EOm/t
 aCS+KcOabNLXFe8z/ehzYnRY6Gzys2t3C4hNvTcp6v+SjNbowjdwLDl4+te0vdbgJImg
 VHcjG8xObt9DmrGD6AV8pBocDMuChUH9RpB+xesOQPALTHt/Vm6QIZw0dHlrCjlyoZOm
 DbLZJG0/J3Is6c3n/0YeE2WbTuEG+SVu1lEWJnNxMwdYSDdhZRlY90ji9kXZPcqeCXBd
 2C6pC5oL8gUNGWeqFq8o4H+M3RCw5Woe3p52lY3go1xzXnOxDV2ecwwS8bIGclDD4Bsg
 3I5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wTcviqiBfirlh6kZs0CnQvv7l5BK6wQ3RIRWOrNoLAA=;
 b=GzPzkSHBLJLPx6zMuGxVtUIS4nFZKBYfkPztKUX3YtSYPsTbyolfAFxLarNced+hVJ
 i3zhUdX5YHrU8iqzDHtbocoAHiMEmC/AJKT277nXAuwkvoTwDGce+FxYCl5pP6j0137y
 1fizeBQt0OYXg1fsNuLLgwnkUiwQQ3zvXw4tG0MQsGAsj6L4WyrfhddiqS4OFgfuD6Kx
 ZSIiqdh7QZQsmnkxLrdgMOAF9VL1lqNN8dnvNJ0QhG64CZ8IrOQCnId4N1Bypw9CiL5o
 g0cmASKua0P25/WnGhwhxGNCcFjmYzKQET5KCG9pnnqXWoOXDlItT850wsP4L66o+Wei
 CM/Q==
X-Gm-Message-State: APjAAAW2ND6DbQ/CNZYrBRiy4b12U6WuOcrj4etzf6lTqD/Dl04AHf4q
 VIIOiLfStgp54iuEi3gQ54MbsV5SZkI=
X-Google-Smtp-Source: APXvYqyODFnxQGwdjh3Tbz7YTkp6+dw0hi53VTI8yg+balMCLHmg3HnYAgwlrYaHE+tIRSLlQWZIRw==
X-Received: by 2002:a63:4465:: with SMTP id
 t37mr106139585pgk.256.1578277378938; 
 Sun, 05 Jan 2020 18:22:58 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id q25sm76539428pfg.41.2020.01.05.18.22.57
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Jan 2020 18:22:58 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Jan 2020 18:22:54 -0800
Message-Id: <20200106022255.169318-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_182300_098922_C40DDA75 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 1/2] scripts/gen_image_generic.sh: replace
 -o with if/&&
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

-o is not well defined.

Found with shellcheck.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/gen_image_generic.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/gen_image_generic.sh b/scripts/gen_image_generic.sh
index 2c57d56f07..527ca5bacc 100755
--- a/scripts/gen_image_generic.sh
+++ b/scripts/gen_image_generic.sh
@@ -1,10 +1,10 @@
 #!/usr/bin/env bash
 # Copyright (C) 2006-2012 OpenWrt.org
 set -e -x
-[ $# == 5 -o $# == 6 ] || {
+if [ $# -ne 5 ] && [ $# -ne 6 ]; then
     echo "SYNTAX: $0 <file> <kernel size> <kernel directory> <rootfs size> <rootfs image> [<align>]"
     exit 1
-}
+fi
 
 OUTPUT="$1"
 KERNELSIZE="$2"
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
