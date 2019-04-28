Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9695CB5CB
	for <lists+openwrt-devel@lfdr.de>; Sun, 28 Apr 2019 11:42:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9TIIsAKExvfhKj413WTDuce0Wq9CcgRb2tu+eum5Zao=; b=CP7
	NQH1ADkbDLoj5Le93wiDxcBQRR+woC9ERkrWVO3kD/9a6K7YKcCZrJUyzaCBdir3T/dqnvPFCMsTx
	+Kdfjl14pMR/ayt0Qwa3gp6gamzrGXoIT6KcrZe1iea7eJPFvv8mjtlAj6UMrRyUSXTU9vq0pHEPB
	/kVVLug4pvC8MiR4L0sZTTCnoNu7+mN5TpPu5MNuWujc2lgoUtZZ73N4JfKdyWoAYGEt1t1KQiGCJ
	09Xct5kkIHsPVXR14pAKd3diNZHwurWxPAOKfecWPxYOXMiWfv/HuQ879R281U6Of1fSW+1KjrRCe
	KbvHxf1XklLgRvQzzNU1qDyeLC49ODg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKgJz-0002y6-6C; Sun, 28 Apr 2019 09:42:07 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKgJr-0002xl-G6
 for openwrt-devel@lists.openwrt.org; Sun, 28 Apr 2019 09:42:00 +0000
Received: by mail-ot1-x330.google.com with SMTP id d24so6191115otl.11
 for <openwrt-devel@lists.openwrt.org>; Sun, 28 Apr 2019 02:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=j7mbazpi/2bR78aWjxlq1pFB26t3s+63EpWaz+mrIZo=;
 b=Lp1GLdTHFjUjyh+4DKyxuuiK/kbHkR8JFIFOpyWy4JNKlhKcGloNq3jXV9vGUdXdGM
 1/9D5XY5X5F7iHqkVQuqn7aVySJDXcCDZCY7aSmPZ0Lbsw1lvgz/PoKr1if2TiiS3Ezc
 MD/h4G1Pn2Dj3BDsQ1kytbDcCpeEocyCM1YqxUFgvYndXYyZm7rCYBaMS3J7WbAHqwBD
 y0CAo4cD2kXQJAsmISJ6rQU+QOgzypevTkpmQoc3zCetpNbkbsBWNCH3gPyytR45itwj
 S9O3ubq9aGhB4LtQrWtkJSYZS8A6cDKw9b/GDWkGqBxR774IdwAJbNq/UFQeCjtYzcad
 WSYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=j7mbazpi/2bR78aWjxlq1pFB26t3s+63EpWaz+mrIZo=;
 b=msWpvClXBSAbKoDBFwfD9wTvEotP6P6wglvL2+QOvEG5dJy0z8GPI8cjYtJIsZdmqc
 L/jRFkO9Fv2q/WXbwaUzoTMkZsHvS7Vsey2i6XNf+Q/mfwN81TAsvBbWsso4EmFomr4W
 sFaLDE1Rad3jvn+H0U6SwLQhwdLiG/wmLBI9Pgk+Hv7hqrLuFHTehRSN27K0uUed2UyI
 DlwGGdTTdYxIo4mzCJQmtGjYdU0Wgz5TLmAgLBHrqmP4HaOMjfotSkclF0UqaLTJgV4U
 HKOtNoNbrmUT5iAMERi7ZIzjbNbjOoTlhh8vE+KosUu1QYNSCsJnVYyGZ2XN9K5P+ETs
 OE7A==
X-Gm-Message-State: APjAAAW+jOdcIlgXp3RBh64V3018bhXsx6I3esLt76c/1JjpKSMqylAB
 H1+MEJB1elKY5LGhmxFebkiHty9sScw1mZz0thXbNnewF0w=
X-Google-Smtp-Source: APXvYqyc5BldYJEr5Md0xP38Ie7XY6YhKBJJ8QXDCKuHL8OXSonmVqzwxV2w1o9qiV4ahUeAQUZi7iNfwb6sCkP750c=
X-Received: by 2002:a9d:6e1a:: with SMTP id e26mr9317058otr.208.1556444516553; 
 Sun, 28 Apr 2019 02:41:56 -0700 (PDT)
MIME-Version: 1.0
From: zhngq2312 <zhngq2312@gmail.com>
Date: Sun, 28 Apr 2019 17:41:49 +0800
Message-ID: <CAHQM781NyMjjMavjRdKB8wPS83FdioO0P6AyLz-+Udbts88X1A@mail.gmail.com>
To: Felix Fietkau <nbd@nbd.name>, openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_024159_562890_1450B388 
X-CRM114-Status: UNSURE (   6.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:330 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (xinglp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] TCP can be established but not transfer any data
 with OFFLOAD ipset wireguard
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

If wireguard replaced with other type vpn,  this issue still same.
The wireguard iface wg0 added to lan zone by openwrt configuration
/etc/config/firewall.
Then I can access my home network by wireguard,  even access the
internet through my home network, so far so good.

But many sites are blocked in this country by GFW. So I add these
sites's domain name to dnsmasq's ipset list,
Add redirect these ipaddress in ipset to a linux PC which run openvpn
to get throuth GFW.
Now every devices in my home network can access the sites blocked by GFW.

But when I use wireguard or other vpn connect to my home network, I
can't visite the blocked  sites.
The [syn syn+ack ack] packets get through well, but not the first data packets.
If I use netcat to connect to one blocked site, it can established,
then WAIT A SECOND and type some ramdom data, I can got "HTTP/1.0 400
Bad Request" as expected.
If send data IMMEDIATELY  after it established, I can not get any response.
If I connect to a blocked smtp like "nc -vv smtp.gmail.com 25", it
works well, maybe because the server send data first?

If I turn off OFFLOAD, everythings works well.

I setup ipset by these commands
ip route add default via <IP of PC run openvpn> table 100
ip rule add fwmark 1 lookup 100
iptables -t mangle -D OUTPUT -j fwmark
iptables -t mangle -A PREROUTING -j fwmark
iptables -t mangle -A fwmark -m set --match-set  <ipset name set by
dnsmasq> dst -j MARK --set-mark 1

Thanks.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
