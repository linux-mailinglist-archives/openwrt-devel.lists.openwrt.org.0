Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0631F6A41
	for <lists+openwrt-devel@lfdr.de>; Thu, 11 Jun 2020 16:46:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pCuM9BJnZ6kfh5tALOS5HcrMyMxk5ObQrrxNxtqp2EI=; b=CneA1+G1Wnkqgw
	6P6LTLY/D/AZ1I0ExNYd02B8/q5yt5GE3RNcj+BQoYEWP2yaIG+KeC+Qj+Vz6cPpBVWmznwGW1TtA
	09Y0y3NYrQqPfAfqPyyILfwLwv5aBS5Y+7TlS2NnDrEI0oVmyGmW10bl9Mg8zAm/EJG9TaYQ5Hb9O
	IkdCKhq5gV6OEApVBMYFRLDSTMxBe6g4JQumj2LGdJBn63yx4L9nmgXW5Wm+EbX8ry2CqaJi7CmsB
	Ldrxv66UtYq4DQzh9uz5ZID+BSvUJZi77fqvenTdZLWCmPuOhduB7KQ4tJiZT4BT17jNIx5ls2RkW
	tTrxVNzNzcTeWIS2RfkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjOTi-00022v-8a; Thu, 11 Jun 2020 14:46:50 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjOTc-00022T-SR
 for openwrt-devel@lists.openwrt.org; Thu, 11 Jun 2020 14:46:46 +0000
Received: by mail-wm1-x32e.google.com with SMTP id r9so5219496wmh.2
 for <openwrt-devel@lists.openwrt.org>; Thu, 11 Jun 2020 07:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TiJaN8RD0GLYQWwMd/ksliEjpHMqTW9t3HwzZ7jVJRg=;
 b=E6u2ss7XW0Ue4+ZmhHEk2gL109Jz5O/3FCqxwr42pdPitYnSM4uynAFLd+6R0E1AnG
 5olGNf28yqBNoflp/tt2q9MI/8ktsA26J+chVTeWPpNtM0FGRrzlnP2SXm4QaMoQ1G/F
 bYyNOHpA5iGvs9FuGAakm4pOzKiP50btcF2jU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TiJaN8RD0GLYQWwMd/ksliEjpHMqTW9t3HwzZ7jVJRg=;
 b=bPlZYDjG1LEcPhg42pUXtt4dTAPHqI1FUOJlE/8PGh87TMrqZ6E16iiCXg3Wu8m/Jd
 7kfu6TYsF9hdjB9wpv1rJ6punoDQkj4jGPhSIiPvkLvbddV3bckL7DD+5h5XG6gf7FTr
 MJMb8UFg8WKseE5stpl+Xar1s/VT3t+1PTbfN+/tEvuDX8xNhrvtfGewfUSwcCNTfFls
 5kEUi3nHyHM7cMi62HYDoCAEtm20sOnPDir3jgS/TyPLfkGDtzAHysGLYFqiVrQkm8rf
 5bmk/D+K3cEDOnWYw7jw4cjvh6ezvkPZFD4bL2ftlwllQt4QKIxcdRmqumffGPx/+h1S
 2Rwg==
X-Gm-Message-State: AOAM5328rLlBONyjI8J3LsUHpTj+dzH03iiiehGMeUGNMhTO0Ha9MrR9
 5o/xJZD7rFGEi3zSa1Qh4UBfDwenYBU77A==
X-Google-Smtp-Source: ABdhPJy6z7+BU6TxiJUqmnf+SLDnhios1rNs8OFBpgnFbklNXnH/dR5OZArivXJcrpKjcssY8KqZOw==
X-Received: by 2002:a1c:9613:: with SMTP id y19mr8326612wmd.135.1591886802912; 
 Thu, 11 Jun 2020 07:46:42 -0700 (PDT)
Received: from Kevins-MBP.lan.darbyshire-bryant.me.uk
 ([2a02:c7f:1227:c00::dc83])
 by smtp.gmail.com with ESMTPSA id r12sm5574486wrc.22.2020.06.11.07.46.41
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jun 2020 07:46:42 -0700 (PDT)
From: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 11 Jun 2020 15:46:40 +0100
Message-Id: <20200611144640.95473-1-ldir@darbyshire-bryant.me.uk>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
In-Reply-To: <20200610162727.19344-1-ldir@darbyshire-bryant.me.uk>
References: <20200610162727.19344-1-ldir@darbyshire-bryant.me.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_074644_917791_9CE5F593 
X-CRM114-Status: UNSURE (   4.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Merged: odhcpd: remove bogus IPKG_INSTROOT reference
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
