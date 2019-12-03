Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AD4111B1C
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 22:42:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pCuM9BJnZ6kfh5tALOS5HcrMyMxk5ObQrrxNxtqp2EI=; b=EUPiMonV8jo/Ae
	3cAULZSLR2wzO4VgADlg12C1mayEI0FRaZMM/9aTOz/dy1R6yZLe+yzkCGERVYGEV/mQQDTO7D0M+
	jNCCcpTV30GpRYCeUOXocyAH8MJo36+33T5Ru/LnJy+Efrz/52jYfWCMYieQA9soQyx8oViVV+gx+
	ky9xmWksoBaOn39JglXfs9hid2SwIn1/dk67a0Fa4/q2ggt6PgPanH0xYql2S2JA7+fHa/5KBL4WQ
	qmGN1WF3+X/o9qwc5Y3eWBhRdh3LMiaPBEcpxMChL7rLx3ID0WmghOeNuPO9W1PCMfnxLAqlcwrDq
	EqCoq/a0QJkexgdSDU0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icFw3-0001m5-7A; Tue, 03 Dec 2019 21:42:19 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icFvo-0001lV-BN
 for openwrt-devel@lists.openwrt.org; Tue, 03 Dec 2019 21:42:06 +0000
Received: by mail-wm1-x335.google.com with SMTP id g206so4720176wme.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 03 Dec 2019 13:42:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TiJaN8RD0GLYQWwMd/ksliEjpHMqTW9t3HwzZ7jVJRg=;
 b=G717jSobLehKa71xXeTkoDMBSZeny0oT+cDGyODu2qvAkPjGmyugxfWruET5v5cD/U
 q90RIyjWfUp04D2vxw9gHDxzgxdN5O0c+HB+/8ZLrx22a0bmWENjPxk3GwQ/fJMKTr1X
 d1SIBwKIMb6nlijyZSpP1DEeT7gmoFAlpR4as=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TiJaN8RD0GLYQWwMd/ksliEjpHMqTW9t3HwzZ7jVJRg=;
 b=EdgzF2Es7qbHjDBy5FqwRJRou0ZB1Eae12ky0/hwY10/68LY6WIPwSeCOiGso/czqk
 BLNmQILCWh7jpM7+CSEmHByX/0bHPp2Hp5vS3gzBI7hjNTE4BrEKvSrny2PTqy9L4KUG
 SOjPSuJkPaiDJKR2ivor7Fx5jKQG4GxUv3C6ssFcQlzyfUyeiV5COlyVG3vV7AkRgznh
 HdE3uXfgArYoHOxMEg8kvaYoEqVYPFxT53rlic3HFM4PyMDim2OpThdRIrh/gJpIruvx
 IvEFBgpdc1faIjkU4Fe3sQ6Mja5MSeC1XstlZB6c+rCV4vvMFV02v1qSuuWQnvlWQDGZ
 VmhA==
X-Gm-Message-State: APjAAAXW1G7VQht9MEayBQS0AEbbu3ahyWXfFlNPPHHzVuV+jjR+88jD
 m8oOC7+63sc+4XzeEUiqzGqJXc32GuTsqQ==
X-Google-Smtp-Source: APXvYqzJKvUwDFY1UjCKlWi2S1qJpZYrCMB9K9P4L6G6vUBRIzcbcJOaFAL8f13oZvyokIO8MehJiw==
X-Received: by 2002:a7b:c218:: with SMTP id x24mr16912256wmi.149.1575409320320; 
 Tue, 03 Dec 2019 13:42:00 -0800 (PST)
Received: from Kevins-MBP.lan.darbyshire-bryant.me.uk
 ([2a02:c7f:1243:8e00::dc83])
 by smtp.gmail.com with ESMTPSA id a3sm5054439wmh.5.2019.12.03.13.41.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 03 Dec 2019 13:41:59 -0800 (PST)
From: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  3 Dec 2019 21:41:57 +0000
Message-Id: <20191203214157.48529-1-ldir@darbyshire-bryant.me.uk>
X-Mailer: git-send-email 2.21.0 (Apple Git-122.2)
In-Reply-To: <20191126084537.30505-1-ldir@darbyshire-bryant.me.uk>
References: <20191126084537.30505-1-ldir@darbyshire-bryant.me.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_134205_482893_DC2621C7 
X-CRM114-Status: UNSURE (   4.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:335 listed in]
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
Subject: [OpenWrt-Devel] Merged: kernel: act_ctinfo: update backport
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
Cc: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Merged into my staging tree.
Thank you!


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
