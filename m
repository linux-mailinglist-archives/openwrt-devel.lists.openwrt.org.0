Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15924130C1D
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 03:32:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5F7MgdyvrgplgCxeBs98h6qF0CBoAYqokDCJWEUX6E0=; b=DvEFnk7x1VIXmj1U78XUVuIbHH
	pfLrwz3FVu7Nkc8JoVD6Tt1bOwk2kB99jG6PoEEVRqr9ewT7fmcLVogKHpiOXrHTAHxitT3atslwO
	BnNO8oD4Z+pvssGr79QYQBJhF9PBKh4LaCPmsr4yK4VQXNGOpGqWIfXVE1kZb57JNupNjqwgnLOR2
	SmBR6NVwVZ/jBrmLo7gG6tXpVbSXg4t+1JrPTyPva/mrYlCb9nI4GFjpCSiIAkHUmArJSJE9WD5K2
	xNpVM7UxDdi0CVRXvktW1g3u5pECrJVFxNjfqts2iQ1dm9ZhNxuqQWBQgGPap01vJXjYmFvXDHfIf
	zFDgzwDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioIBa-00028d-8m; Mon, 06 Jan 2020 02:32:06 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioIAy-0001Qh-5E
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 02:31:29 +0000
Received: by mail-pg1-x52c.google.com with SMTP id x8so26155939pgk.8
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Jan 2020 18:31:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=c+lBwgrZnoCVlywnYcqoEkMaHK0voBnmxueIkUuCJg8=;
 b=Ha76gi/EKzEdcs6m4yTKatNM+YNzquFC1DwIpUuu1Nq2d9PmMe3VQwWB2lEJu8flcW
 HPz+RURfTxhKxgQGR1YsWzJO8r1Q9hQmc7Kbq8/pR3+KSwVisOfd8c9orjkAx1eI1lTN
 QAR5+Y91SZ316hG0QaNAyzL0+MYaJ5AfxdclAIoEpWHgWko7LnxGbRA17/vC1ISlYUnl
 IkdY9TXmBy9b4qDoBYW4+jN3yvykCt/MkVbZroe9IkMj8P7xEP52dkRrzF7kOl2tRcRi
 AM7nPwpexsYEnpZN6NhAlQsYEQedvjjN/7yeHV0BeX/SAbilN4cGTz/cw2QCj8zksNyM
 9kkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=c+lBwgrZnoCVlywnYcqoEkMaHK0voBnmxueIkUuCJg8=;
 b=ZtmdQVEVQqltDiKywKtfNJT+m3dnuw0GyE+oiTIgeEsDaXUfpIwlSW7tuu3/U0Z+HL
 sHGGenlNEJbC0eMsQ4JrtKk63eD+wbB1qGPSy5P+uWfOllvZ9ZQCOvu+zHEeFaQMRixn
 rrgU2XZmSxuVEGACx8MNYcXOYmkKKYBux7BCPIz/u5vsN1500NGKykn2qUONV5kEnUKJ
 EpMG273TQ0TY+tEkJaDIwGbWgeNHO6+v5tdm5B0CX0aS44CLMtX+DcR/fx+wqzYGwV7m
 8I0lTbrz70HuwbGoE6LvPoBNEcG1gObxiBjYARi0b9CLvhoIh38MSEVij8V/xQDy9AXL
 p34Q==
X-Gm-Message-State: APjAAAXHDzRUEfHX5s3ggu1Ud0xZsiQ3bgetUri9z0bo8xEqVrdkNifa
 GjbBZOsQEUbc9gcLwqlMqWfVNgHtzNw=
X-Google-Smtp-Source: APXvYqwVHiFxgpv8IjuFLEzlHz3uEEkPe8IaDvxIATygsokZLU4XYk3/rIFv17lyHKYE4+QnHmeIJQ==
X-Received: by 2002:a63:5964:: with SMTP id
 j36mr109936495pgm.225.1578277884470; 
 Sun, 05 Jan 2020 18:31:24 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id q21sm73960609pff.105.2020.01.05.18.31.23
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Jan 2020 18:31:23 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Jan 2020 18:31:19 -0800
Message-Id: <20200106023120.170525-3-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200106023120.170525-1-rosenp@gmail.com>
References: <20200106023120.170525-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_183128_215166_A832BBF2 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52c listed in]
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
Subject: [OpenWrt-Devel] [PATCH 3/4] scripts/mkits.sh: fix improper string
 and array concatenation
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

Found with shellcheck.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/mkits.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/mkits.sh b/scripts/mkits.sh
index 53b9ec5f20..c09e537dbd 100755
--- a/scripts/mkits.sh
+++ b/scripts/mkits.sh
@@ -43,7 +43,7 @@ do
 		k ) KERNEL=$OPTARG;;
 		o ) OUTPUT=$OPTARG;;
 		v ) VERSION=$OPTARG;;
-		* ) echo "Invalid option passed to '$0' (options:$@)"
+		* ) echo "Invalid option passed to '$0' (options:$*)"
 		usage;;
 	esac
 done
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
