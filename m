Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE93DECD8
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 14:53:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0qY+JmbR/ampQ17x6C9cQr18XLqIaaA3+zR+6WhYRzU=; b=DXFVYDvTTvCKt67sn3urPQotF
	9C7EUwO/G+/fc30adM9letit1vejsQpf/PjlFlyIs6PDXnp/DeyH++J/fFJJdPgLna9mJD9bHoCfU
	5kOeOoycSeskpHPBhXXbk8wgXhLBYuBizppR9XB287A3FC9wbpFkonNaclXBVUmIv1sWVxR2Ce00k
	gzeV0GRsw795Raf7Z2itBXVKOYDRccdiuuH9tf0vpkQ8kbuANESA/VUEtDu1SWOYD0c2buxSwjx0w
	3KDnW6JGJ09eFyhoOcV4i00oUCxqg+nEJdDlgtlKxaM6huW2b98S7GiYLG8JQSYY3o3/5YhvJLabd
	8joyMH7mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMXC1-0008Ra-5k; Mon, 21 Oct 2019 12:53:49 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMXBs-0008RI-Lw
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 12:53:42 +0000
Received: from p5dcfba1e.dip0.t-ipconnect.de ([93.207.186.30]
 helo=[10.255.231.27])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iMXBr-0002vX-7C; Mon, 21 Oct 2019 14:53:39 +0200
To: mail@adrianschmutzler.de, 'Paul Fertser' <fercerpav@gmail.com>
References: <20190813182540.w4ee64he6hkteahc@home.paul.comp>
 <20190828090924.14695-1-fercerpav@gmail.com>
 <038201d56043$9a8a7c20$cf9f7460$@adrianschmutzler.de>
From: John Crispin <john@phrozen.org>
Message-ID: <9d0579ba-ba78-9c77-0ba8-5370baaf9eef@phrozen.org>
Date: Mon, 21 Oct 2019 14:53:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <038201d56043$9a8a7c20$cf9f7460$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_055340_873524_B02B0935 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v3] ramips: add support for Xiaomi Mi
 Wi-Fi Router 3G v2
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
Cc: openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 31/08/2019 23:32, mail@adrianschmutzler.de wrote:
> "6t@eth0" and "6@eth0" should be the same, so this can be merged with cudy,wr1000.

I meant that part, sorry the mail was sitting in my draft folder
	John

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
