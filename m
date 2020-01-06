Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C63B130C21
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 03:33:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SP7eTfLl2mNVhliBthCByd8JI2+PbcL66QJrQr2qNvg=; b=XR7CqmMyKI9ZFXymEtpBxZfuXU
	FMTZsGq83CWxTi1U/w09CH04A0GOrklauh5+OpktPW0zr2E18j0tpaWuZqlbKjwT7PYer9ZqoGhKq
	MB/DAEn6Kpe3kAWrjiasWn47c3uw1/c26meF98SDCLD/dkiawyVfUSrpvguLNHwjPaZYFn04JC6VS
	Cq2FzuZGpItmiPxo7nNbePpHSP88EDbaK2vPCqXp0KOZrGYmzs9ZS8/F06o2oxkUXZQ8WqaMNsqi4
	FWOp9G/MLfOxOyjlF4OkSk3VV9UkNodLuHg+uqpOZQXfex9CyrCkN1oLZ+6jBZ/79sy5ft0/XOSTr
	XN3uuqyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioICj-0002vI-Vm; Mon, 06 Jan 2020 02:33:18 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioICC-0002TY-3k
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 02:32:46 +0000
Received: by mail-pf1-x436.google.com with SMTP id 4so26243536pfz.9
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Jan 2020 18:32:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=GMM4oZ0Zn43kZLiI8a0TZL+3Pz6E5edSOca+ZQRfJec=;
 b=RNaeL0Z2CCJBbDmx49DUt2uOJMNJbzuOTiB/GujfmwNkJUD4KmnKxOrrhiJLibKgA2
 mUKP5ed2OR/aWBDK8VPHEliZsb9riOH4PckfrI20NqsenMBwcovENHxaqKaQGfdfpRVz
 4YRl+PlEKh2IVSoI0FSAuDMUvgqxxKYYWWf9czhbgdft4Zpri8Wwdb+UO9LuETDr50Ji
 SxoiPwzaKMeD79PbXkKnkWCy+7VwMsMvpLfHOyzpj+lWW7bFPesLAwZr7XB/RDhUpDJ7
 kCJ4YUGHSL87kgO9ax7M+WH+Yw3r+HO89pNMoQEf+5cJWHKoTVuKs0Aq9gXHS5UBmtKo
 sfXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GMM4oZ0Zn43kZLiI8a0TZL+3Pz6E5edSOca+ZQRfJec=;
 b=MIbu010Bmf88W4okw6bw5xt0x8SxIBDeDlhLXEUmgs0v1AWuux9DAqpb8bB1rLocuG
 w1F7MO/kOMpNUxS8qXm13iawkv0SIXHO2AHNcN67Ero+TJ52ixqCiRariPJNHy5b6mQO
 K7atdetuqM7MmRcfJZGayXaFE65twcR1n27oGZl3hiXtCzMom3Rlb5rqaCy3dVda0qoC
 nD3mr06ih3s2JKqn2QkW4YUIcNcYvbEliF5pdNPe91hSLveKoPmYaNycTHoz+NR/W8z6
 hIdHc5hBktS383VqWUrfRsCutCqqeB7cAdh8DjtWeTLskHHv680cm7xaofkEEN7nDxyZ
 VEaQ==
X-Gm-Message-State: APjAAAUuNuszU9Pxuk2T3oTY9Rxe4umIBSXwx6XEiasmGzUw3scGeoqm
 Qy/4fEoRycx1JHDy78qdFoVkCsF/UpA=
X-Google-Smtp-Source: APXvYqzafFXVJYgbeih+2FJgA+5cle59fI9HpXQKvEbYFQ9vDMfy2K5qmYv8qHvqBcB4hV6ZvKyubQ==
X-Received: by 2002:a65:68c8:: with SMTP id k8mr108689151pgt.216.1578277962801; 
 Sun, 05 Jan 2020 18:32:42 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id j9sm62628168pff.6.2020.01.05.18.32.41
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Jan 2020 18:32:42 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Jan 2020 18:32:37 -0800
Message-Id: <20200106023238.170677-3-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200106023238.170677-1-rosenp@gmail.com>
References: <20200106023238.170677-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_183244_160082_ABB0A302 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:436 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 3/4] scripts/env: exit in case of failure to
 cd
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
 scripts/env | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/env b/scripts/env
index 19cfa13841..848850a778 100755
--- a/scripts/env
+++ b/scripts/env
@@ -147,7 +147,7 @@ env_clear() {
 	else
 		rm -rf "$BASEDIR/files" "$BASEDIR/.config"
 	fi
-	cd "$BASEDIR"
+	cd "$BASEDIR" || exit 1
 	rm -rf "$ENVDIR"
 }
 
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
