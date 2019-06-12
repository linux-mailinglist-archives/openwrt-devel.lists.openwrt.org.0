Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB6242B4B
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Jun 2019 17:54:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DP/qbfg+AZjbrRZDlGqyuc6Im2Npql9cgixzRdrMCfg=; b=HB5oQzmDPfIcYi
	wK41MWNie64L7V9hZv4yUwvspbks6EW/JF7aXW0RZb1NZJMhbMVNYviT1JzmF42wlNk7g+oWyOJYa
	K5+2JoERQWEDEhkrFucqmXzgDbN2R5O4f2di8zlQsV6ugMTc/FP/BaAJjuJqPVdoARz9fH1+MR0vv
	tbKaGg/ehpMtw5YXDvjY0nruES0olxayqRIFDxwtJ4HtVCHyNlDn/wEZAtKlLhpAoGnZB7VBAt553
	yfxMHh0Se0mmlxalZU/yf9kjiN1NWgKot+tQvH7J70wky1/htXEs8bhMNYuUoEswE5uM3duJZ2+ZS
	S4BpnETNIIn/NX+kNokw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb5ZC-0001an-RS; Wed, 12 Jun 2019 15:53:38 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb5Z4-0001Z5-RI
 for openwrt-devel@lists.openwrt.org; Wed, 12 Jun 2019 15:53:32 +0000
Received: by mail-ed1-x543.google.com with SMTP id c26so26518960edt.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 12 Jun 2019 08:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=google;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZKqSHliCmYFr3/2beJg2AvdRPk8j18+ApRTj+hNdinM=;
 b=OHJXSz9O+ZmEPAsmyGfowC3osLb5nr63tkhyfHL/a3tloIVn4V0Jf0eXK3g9fWxu4b
 c1SDrPwAZ0xvY04266/DTCI3OqhhhMQy35SEpzfBN2oIZen6W/P0L52220Jcvpd+jofb
 9wxiN5wF+nrHkdzv7GrSNHjbe7jer8uF7qkBQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=ZKqSHliCmYFr3/2beJg2AvdRPk8j18+ApRTj+hNdinM=;
 b=GfsPfDMQ5eoF7hSc2Rj8rgmRG/QoyCWNXCTcmjtn8Lv5NEi5gnD1iJW2F4CrgV+1wI
 z4gC0A4YAx6kCkMiczwv/rmYhLoohPovEusXUTpcol2W//J/sEnBAzSk1m1zA2qEWkMf
 QBk3W20GGGEtyLLvNjmhqKLiuBp5qEeaS0Vw5QcSAnL8a41yvokZN+A2uajAcujlopGU
 DnUSegWyiLJXghjOvSnFKpXS9hAgA850b8tnWoDyimd/MtKP2LaITNzPCTCGyh9X1u4C
 lab18X1teKp/b4vAiO1QaHY9RyumjSlCxIlb6dlqklIV+fbjpbcpNCGpEBDF2AGUmLZ9
 7WqQ==
X-Gm-Message-State: APjAAAXhdc3wI6p7OQFbt2gIX8cM/0IsjsjZMhjyfAhDj/fmGtOpj+tD
 OquRegMqHuqxvpNv8Hnl+l1o8VOoiBw=
X-Google-Smtp-Source: APXvYqyRejGt5RB/c4Pl8q8hr7I5SB6cdkRZPozysnxJHR5BPssIDVS6AN013DVlSihRKQ9C85HcSg==
X-Received: by 2002:a50:8dc5:: with SMTP id s5mr88438476edh.138.1560354805320; 
 Wed, 12 Jun 2019 08:53:25 -0700 (PDT)
Received: from localhost.localdomain
 (ipv6-0cc2929eb4f88c31.west.clients.hamburg.freifunk.net.
 [2a03:2267:2:0:cc2:929e:b4f8:8c31])
 by smtp.gmail.com with ESMTPSA id r12sm76562eda.39.2019.06.12.08.53.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 08:53:21 -0700 (PDT)
From: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 12 Jun 2019 17:53:15 +0200
Message-Id: <20190612155315.35735-1-ldir@darbyshire-bryant.me.uk>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_085331_141283_797E3EA1 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [firewall3] utils: coverity resource leak warning
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

solve coverity reported resource leak (socket handle)

Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
---
 utils.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/utils.c b/utils.c
index 7f09787..fc6bbd7 100644
--- a/utils.c
+++ b/utils.c
@@ -944,18 +944,24 @@ bool
 fw3_check_loopback_dev(const char *name)
 {
 	struct ifreq ifr;
-	int s = socket(AF_LOCAL, SOCK_DGRAM, 0);
+	int s;
 	bool rv = false;
 
+	s = socket(AF_LOCAL, SOCK_DGRAM, 0);
+
+	if (s < 0)
+		return false;
+
 	memset(&ifr, 0, sizeof(ifr));
 	strncpy(ifr.ifr_name, name, sizeof(ifr.ifr_name) - 1);
 
-	if (s < 0 || ioctl(s, SIOCGIFFLAGS, &ifr) < 0)
-		goto out;
+	if (ioctl(s, SIOCGIFFLAGS, &ifr) >= 0) {
+		if (ifr.ifr_flags & IFF_LOOPBACK)
+			rv = true;
+	}
+
+	close(s);
 
-	if (ifr.ifr_flags & IFF_LOOPBACK)
-		rv = true;
-out:
 	return rv;
 }
 
-- 
2.20.1 (Apple Git-117)


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
