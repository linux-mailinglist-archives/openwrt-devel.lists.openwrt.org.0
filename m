Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 258F21AF603
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Apr 2020 02:37:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yHx3jaTlrvVpcGQVakohWHZ+8JdaDzAZyPRXUQwJPfU=; b=rBGRFo1WFqpTkvqrJbbfgw3T9U
	4a+JnTlD2EtnLHSKmNKHVe4IQwImXF0PIdGk1xy0ZHA3R4E4TieI0vluQu+lkybLtAHaCizSg1+9M
	ocfg7DusVM5G11ecMIw4+/bbshDz8gjcNEyP8bFjqhsrDT5raksZaNh8qU9THi0N6j0NJetE7Rcp9
	1Ix+B7Ey9g0ajB0njtNEiZgD33r3Z51Ik+mLTTLmhPnkcUrxxHHIlDp3yTSiETgHQlZrPalKMQqQq
	/9mNZWfj4RCfSgyC4TtGJwAhvsPvUv/6rBenIC4U+Sn0Qv8DQloWorRemih7YdRUq1T/cYXvfxTRF
	Qy+jIz+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPxxs-00034N-BE; Sun, 19 Apr 2020 00:37:40 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPxxm-000334-5w
 for openwrt-devel@lists.openwrt.org; Sun, 19 Apr 2020 00:37:35 +0000
Received: by mail-wr1-x433.google.com with SMTP id b11so7565779wrs.6
 for <openwrt-devel@lists.openwrt.org>; Sat, 18 Apr 2020 17:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=3UPh5VSpm/w969Jx0w3e3zppIClpBpJWumXSiDDxo6s=;
 b=ja2wye6JtFtH8xhmr/Z3n56DH0tsUAGmiXD5hqr10STPrO/wvC7/6nZ5kwBmYJ95ta
 QMTZO7AY/gIwv333anv3KXtlG2bivuKzo+63Gwb9APHlxuADur9s0rEAKCJ8uwSMq6xh
 XfyOV2x496b1pvsJrgLdXuun84yK5T/650Jxs39Ylj5Rrome/k0b/VaIYSMjAjUBUV8e
 UiTrFeddTk7Wes60WTv0jB8mB2INrWb6CFI/xqoowMt7mwEdci9uUI2st51xfGu0jaLE
 4vlty3YcWX/lxlR8uPGc9WQbPGWNKy4AQICO39A4i885k+160EAbNlt7s+CDS7NN0WJQ
 xO3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=3UPh5VSpm/w969Jx0w3e3zppIClpBpJWumXSiDDxo6s=;
 b=m39SifBdGoO+lPK81ZDpfjfq0lwK8ejud6+XN1EHblYzXaNlLR8anro4MA7THwhiUK
 91ML0YicqJBQQdKPq+AoHb87R0HnaWN2RD8MKYGHKcyPd3Lq71npc8181XOItf4RsTz4
 iGBfPcAkpyXCuz0ajoCZjneS68U73PaPMfIA/ds9hWtAA8X2r7tn5gW00I+sH/en/0x8
 3pET4tXyn0wPx4uLFzDzbM9iMMLdIzWiWLYkB8wUerae+t2ADXwWnBNKrqGjVji7H/pi
 2b9/MEXWC/pZMgD0UIfKhaX7oqBpokPwg4/8q38QGwv0pSgmBZwoGdNRQz1RAw+zhjbc
 511Q==
X-Gm-Message-State: AGi0PuZc9bmn7UkPQ1Lmz7Cm3xTCnNnkxJn0NQzA1JWEhpVq6CDVe4D1
 AbWQxdL5eKFtdiiiGB+FyN7YbJ8+0VM=
X-Google-Smtp-Source: APiQypL4MRmx0jICJSvSmgZjIZCMsBJUmOXWQk8SuTXHut1tYVwAlgfgb8u361FQBefH5POjQy2XyQ==
X-Received: by 2002:a5d:4452:: with SMTP id x18mr10765263wrr.231.1587256651692; 
 Sat, 18 Apr 2020 17:37:31 -0700 (PDT)
Received: from localhost
 (2a01-036d-0111-d83f-6865-f484-7881-a441.pool6.digikabel.hu.
 [2a01:36d:111:d83f:6865:f484:7881:a441])
 by smtp.gmail.com with ESMTPSA id p7sm38434020wrf.31.2020.04.18.17.37.30
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 18 Apr 2020 17:37:30 -0700 (PDT)
From: Szabolcs Hubai <szab.hu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 19 Apr 2020 02:37:13 +0200
Message-Id: <20200419003715.26284-1-szab.hu@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200416153146.4377-1-szab.hu@gmail.com>
References: <20200416153146.4377-1-szab.hu@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_173734_245766_CAB33B9A 
X-CRM114-Status: UNSURE (   5.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [szab.hu[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] (no subject)
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


Hello,

This is my second attempt to fix the snapshot images for D-Link DIR 860L B1.


This device accepts uncompressed uImages as initramfs only.
From the flash it expects LZMA compressed image and ignores the uImage header.


To create a bootable image, the LZMA packed kernel prepared with the LZMA loader
has to be packed again with LZMA.
For the initramfs, it needs an LZMA compressed uImage header too.

In the second LZMA compression stage I use the fastest compression ("-a0") to
save some CPU power.


In my previous attempt the "-d18" LZMA parameter needs 128K more space,
while "-d19" and above causes LZMA ERROR 1.

With this patch (LZMA loader + double LZMA compression) it needs 64K more space,
compared to the snapshot image, which uses "-d23" as default.




--
Regards,
Szabolcs


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
