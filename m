Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0265F7AA9
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 19:21:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R9FxPSOXnKQ9PDRluhOqNIy+QoK3C71lnhh1tm/AvU8=; b=CfCkIqt6Y1BIQp
	DYa8J3mGYUU/+fc7E5jL5ihQB6FmShBvtQOZEt3jlWoM2VyeauESiewban3xzn/FfIEFSpFSSTL9t
	zssYL00C5pml3XNyld1a2qpyqWxTdbT6ozVDB0wke8a3ZewBtViLO9eJPimYEoWMxrdk0pkEIr/uL
	hOz3eAaffM3qw+dbdVQUMWu5QicX4fk06bj9t01zFURVsDSds9udQSxR+J42Fz1uBgVhMySFOo7Dc
	AIOnVqYgT6JKuiN4mVSD9YTmq9uAGL2ZkWq3mGe+oQJ0mrB8TvIuCtC7zJaCc0XtQlfn04l6JQbJ5
	eAAF7eR5GoKcnPY+lQ1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUEJp-0003rl-Py; Mon, 11 Nov 2019 18:21:41 +0000
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUEJc-0003pU-7i; Mon, 11 Nov 2019 18:21:30 +0000
Received: by mail-qv1-xf33.google.com with SMTP id g18so5262779qvp.8;
 Mon, 11 Nov 2019 10:21:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:content-transfer-encoding:mime-version:subject:message-id:date
 :to; bh=YhbAILscWwuIgcdATvE4/A/urQakZJGtZbMxZ9QXGB8=;
 b=jh6C3A8LiUsb9zrni0GmKo8CqUcW9Fthj8r9qx8MVySeTDn3fprejr3/GbyyFYgs7+
 erj/aZvKInEjaJqEl2m/NRVgbF3M/5QgGN1HglyvHE8HgLLg7HdjivHTIhWFUMrLensD
 dKroaDQgLjmxvHYPJE34/vd62FS1wW6oQnucW3Fd89eIR+qcvj+TikG0vv7v3Xa0lKl4
 BEgOeiwuv509Puiq35Z7bM0Rhlb9jqyRGACMDgCJwU0ZQyxyN1hjgTyHKAUPd6ZbY9Cn
 ZKsN0NHEKR/hWbvUbr1OG3k8X+8woHQDbxLilUaGyZK9SgjsoBYQGy4tG8Kl/tdq0uLi
 YJAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:content-transfer-encoding:mime-version
 :subject:message-id:date:to;
 bh=YhbAILscWwuIgcdATvE4/A/urQakZJGtZbMxZ9QXGB8=;
 b=CxOXysZRalZ0/FonXcdCRtEHSQLFTfiP5WSU+0zASbJqYAet0lhvXphiAuJc8ZQJSe
 fAk0EC/pLn1gLBGC6jJ0HOQKEEIJ4DMCTetKDT+Cr0119CCAhH5QYM11JGS7w8YKHIBU
 6XGACA5+UjVszV8/4u/TuVv9/7DD23YfdTJQiLmvKG8lP4VtTKG5+SAnIdfRiT7rlgFA
 0rIOFldy1WJf9qgjTa3e5TQjAh2a7iy+Cd0NJ/6JJvFsbh+7Iz640iuSSHKaMk6okvUp
 tu04SRLauUFjGkA3KOk2GSKwVW5u0ocb1EhdYGBelR3j77SP2aocpmIPSh55UW0GUNaP
 i+KA==
X-Gm-Message-State: APjAAAXOty17vVwv6O90/1b2JcjMmfPndC4GpEdaUvDpVaMwJk5Ge7IS
 HWNi8lBH6/NIDH13WudlsgfP1OAj
X-Google-Smtp-Source: APXvYqxQxqxZtCV6JHw1wQE9PFs6cxlsMTekZz78ow9WFcaFr24h3RlvyT52Z9f+5qnnTlMKUlyKwA==
X-Received: by 2002:a05:6214:136f:: with SMTP id
 c15mr25140243qvw.203.1573496485861; 
 Mon, 11 Nov 2019 10:21:25 -0800 (PST)
Received: from [192.168.5.8] (c-75-69-95-149.hsd1.nh.comcast.net.
 [75.69.95.149])
 by smtp.gmail.com with ESMTPSA id b54sm9776912qta.38.2019.11.11.10.21.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 11 Nov 2019 10:21:25 -0800 (PST)
From: Rich Brown <richb.hanover@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <9C8DC744-4EE6-440D-BDF7-5000C8DAD4A7@gmail.com>
Date: Mon, 11 Nov 2019 13:21:24 -0500
To: OpenWrt Project Administration <openwrt-adm@lists.openwrt.org>,
 openwrt-devel@lists.openwrt.org
X-Mailer: Apple Mail (2.3273)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_102129_521751_44E70382 
X-CRM114-Status: UNSURE (   2.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richb.hanover[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] Congratulations on 19.07-rc1
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

I saw an notice for an update to the OpenWrt wiki:

Announcement for 19.07-rc1: https://openwrt.org/releases/start
Release Notes: https://openwrt.org/releases/19.07/notes-19.07.0-rc1

Thanks to all who helped to move us off top-dead-center.

Rich

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
