Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4256A63BB4
	for <lists+openwrt-devel@lfdr.de>; Tue,  9 Jul 2019 21:09:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pCuM9BJnZ6kfh5tALOS5HcrMyMxk5ObQrrxNxtqp2EI=; b=g/xZLJpjyoC/Tz
	PMv4l3ELzBszdl0ANXEkFHUf/Sjk8P7KuU+kDlOrXPkMrA5VC74h1U7UdaJAUAFNdv3Fc78DA97kB
	mVyRHE99PNMtCc0Fq6YxW1w0zn6LbpL36zsl2aP6xtzn25zru4qvOwDnI3xKY715Zm/uRxW9VDcDv
	0xDppU6HLP78JaoikQyBmaImko3hIbBbXpHkS80cIiySyBGiaOYxaDBdPYBXB65vZg63GUtiE78tf
	YXFRLpMFvEi3PqmxCTXLqBgC43XkJKETNrM3UjgPAlhV0r/nGOdCLWA6tqvBgX2aKPP4ncgvG1jig
	Ui+BNdOygbtUhnU1Czqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkvU6-0007eD-Lp; Tue, 09 Jul 2019 19:09:02 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkvTy-0007dW-Cc
 for openwrt-devel@lists.openwrt.org; Tue, 09 Jul 2019 19:08:55 +0000
Received: by mail-wr1-x431.google.com with SMTP id 31so5413575wrm.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 09 Jul 2019 12:08:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=google;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TiJaN8RD0GLYQWwMd/ksliEjpHMqTW9t3HwzZ7jVJRg=;
 b=CiMh7V/jk1+jlvXTeHb7VUSMWVFSsBGXzQnoZEdV9V7WkKAeALj3qagDTwscLyU+gK
 XdkV05OQUvqsp9hkYFoZshdu1CC4p5sLUtAJFEa3rZGAsE/vzTpwIkOSEIc9SOU35scZ
 shDsd2UThvSZb8L37JOqJMiItJHXWjacqlSGI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=TiJaN8RD0GLYQWwMd/ksliEjpHMqTW9t3HwzZ7jVJRg=;
 b=k//wU3pTNEeeLD0bylnZMPL+imK7H8SW2bWGbjI2d6JKOXtLN9RyVmxWdtZQjxYs9/
 nu9qzCax7FBZ5SDOMMAEbueK3/fE1lkuaJF5B9ynes7js1iBW874ExtMs9JSRd0JpSiT
 lQgWDdEgb1AZiR1FV9sntNSvbVQ2XcB7f+8t07JajdvIbIvsaS1mits2ZxQ6Tgbm3kV9
 yJpyCQKkNAseujNR1P0Nyk2SMdATSpdLohD5SwsMZswVOjVHuR24JLWJgbdgUYXuiApL
 gJE+14pO/vOe6txNDJqqq/HHXrQL2VJ7fNQxK1iB/W9q69lXO3pe4kfxEBzorVYRPNQH
 4XkA==
X-Gm-Message-State: APjAAAVy08tRDPVupgR/Nt4XP0E/TSD+vkDk6Wols+dNztObpS+fW6Qh
 +hr+bZ+g5DH1conEh6KfVosfcFbgF28=
X-Google-Smtp-Source: APXvYqxUGRpKHurn8EMnGYmLdXUpYdX3oc8sVOwRJSFM4XGmVIQ860vMZhQG3pb3bedrl8g3lIVF7A==
X-Received: by 2002:a5d:540e:: with SMTP id g14mr28279186wrv.346.1562699328652; 
 Tue, 09 Jul 2019 12:08:48 -0700 (PDT)
Received: from Kevins-MBP.lan.darbyshire-bryant.me.uk
 ([2a02:c7f:1268:6500::dc83])
 by smtp.gmail.com with ESMTPSA id v4sm3481160wmg.22.2019.07.09.12.08.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jul 2019 12:08:47 -0700 (PDT)
From: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  9 Jul 2019 20:08:45 +0100
Message-Id: <20190709190845.16983-1-ldir@darbyshire-bryant.me.uk>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <20190708211404.56961-1-freifunk@adrianschmutzler.de>
References: <20190708211404.56961-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_120854_434439_F69213ED 
X-CRM114-Status: UNSURE (   3.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:431 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
Subject: [OpenWrt-Devel] Merged: rb532: Fix missing DEVICE_TITLE
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
Cc: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
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
