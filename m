Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D15F31DCD2A
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 May 2020 14:44:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=U8qGCs9Y0jNH3gS1d3cY+0hHrTAvM6e5e1VkCi11xT8=; b=NAv
	eevBlYoE3VKFf+0SZHdgD9pii60qDV6C6Lfdq0pUWo2dIL97+LIoYzGiiyr9SwGQZ6LSVx74WBjUQ
	yXhkcsRI7WvKdcGgN/kFzYtT5bOO+2AeRLfc7AUvZ8ECyDO2aklU3gfa1jrXn1zRN6siePthXo6Qd
	QqHbWqeDTnO/yNUjufyOHhVHLP++Qcm92tKyvRizHvBNQ80gytKHgBdauSlqAotUPOKQqygFlQMsB
	CkWnL0TVYxaRNszv4ACyfvRsYqkQB8rYt9AJiGisaPzG1HEBamj9ZraraZqwl2vAgqEkDD/oYbW62
	znu1gauyKRO3lu8uKkrvM//CgLK49cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbkYz-0004mQ-5m; Thu, 21 May 2020 12:44:41 +0000
Received: from mail-il1-x12d.google.com ([2607:f8b0:4864:20::12d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbkYs-0004lk-DA
 for openwrt-devel@lists.openwrt.org; Thu, 21 May 2020 12:44:36 +0000
Received: by mail-il1-x12d.google.com with SMTP id j2so6925560ilr.5
 for <openwrt-devel@lists.openwrt.org>; Thu, 21 May 2020 05:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aleksander-es.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=GL8HkpTSpyMzS+C/JihOzqFKm2vFTvC0A8hDztu4kds=;
 b=F4syb9+d0euSa0IZSk8izgUdTgJQmj2eR5d2zgpa8L5qOIpATqouobJKLbhQzuij9p
 eDPW8cA6DiviXMF+dFeB+GeqJLrgSPa6RlCM855l4Pj85LkA4cUYS8ReukhNQ0R7P/gW
 cCaCfkATAgu+mpEDPHew3aGK8Lfzn4GG1THombiDJrjD7vpnS2a8e4s7gYrupj+l6hLk
 YKFXR3ENhJBgsFw/YzvSccbwGxbcMEOh0jSGrW2Y1tEvOFyCnVVmsgn5/m1W81KYpJmF
 Y7g5oJ0kWTXZA2rEZ1pL8aBV0PCLeQuHvahBcnVAFadp46EUdB3BuK0WytM0NVg/auY0
 ZXog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=GL8HkpTSpyMzS+C/JihOzqFKm2vFTvC0A8hDztu4kds=;
 b=LH1PAQYoqoHtVbbAzaZ9dse3/oWIGN97UEbif5I2RVPdFn2QkwSU483dqjJyR1GhZ8
 6HL/v9sPj0E+HKocv3E9ONy2P+p3Kev9tNWVDUzqtv04zRMqUusdXb/66BgrvMQtsN7e
 brKqc2LEEuMpzRxJBm93Ol+f31BI+XhpCqpYXhQT7HUWKx+9ItHfxestD/oEuzgaW8lo
 K4pVaJRBbUQkaIOkKqbjGtRgQA7nAiv87BgeLhSS5FfmQo+/bETls8d2e7daIfCInLZY
 jmqlXr5nFFasKnd0EdCsg4XWDQseoOtSHfshr8sYohErAxdXUH0XNnBcIhw9IYmbsve0
 i21A==
X-Gm-Message-State: AOAM532DIr85IUKSr7tCV8rxuwKmGxL8ggawBZO4GRg9o2cvk7EveVEl
 TCKf2qp+TJvBcaeYYXneshgiCVVt68FSMuGxGZ2limC9BjFa8Q==
X-Google-Smtp-Source: ABdhPJwZybxck15UwfPg8/GOClL/h/eLDefLQvc4lYQxNrxQ2AXl6a4YAwxbMvFWuHoX5DDP8A6gAONzUsSTO1zdL+E=
X-Received: by 2002:a92:de02:: with SMTP id x2mr8588344ilm.267.1590065071565; 
 Thu, 21 May 2020 05:44:31 -0700 (PDT)
MIME-Version: 1.0
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Thu, 21 May 2020 14:44:20 +0200
Message-ID: <CAAP7ucKJ78gCg1y+60afcL1rYw4XpHxwwdZv97DweGLesaNfCg@mail.gmail.com>
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_054434_510780_CD282C99 
X-CRM114-Status: UNSURE (   5.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:12d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] netifd: per-interface MTU settings vs per-route MTU
 settings?
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

Hey!

There's an ongoing discussion in the ModemManager package in github
related to how the MTU may be configured in the network interface
based on what the MM bearer object reports:
https://github.com/openwrt/packages/issues/11383

E.g.:

$ ip route show
default via 25.225.105.222 dev wwan0 proto static src 25.225.105.221 mtu 1430

Looks like the protocol handler implementation for netifd may allow
setting the MTU to the routes associated with the network interface,
instead of assigning the MTU value to the interface itself. Are both
methods completely equivalent? Is there any reason to avoid setting
the MTU in the interface when using netifd, or just not implemented
yet?

Cheers!

-- 
Aleksander
https://aleksander.es

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
