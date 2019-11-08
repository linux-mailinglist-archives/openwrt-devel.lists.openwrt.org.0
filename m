Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 016B0F4F0E
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 Nov 2019 16:14:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=u6sew1/+WDLNu8raLmtlYrU2tLGGuZHDFU+QC9TdGKs=; b=P8xMYeGThStf4bBz1HPuZfkNf
	H6YS6Pr9ULpcTAKWcD8VECq9cO+T1AxUQGLBEMC2bCQ1gojug0+TrhYK7M6naQldALLKZjurEfW28
	ZK29a9baXZTohQaKlMl7jujSDL8P3jKY9tikJRFYC2vRnZfAl/c629kvDCrgPG7cAT9mQXKEJ9j6N
	2z1Y0YMIXhrQfWsL1xEpTUgXbTP7eXpZgQsDd3N29r51bNTAqh8C+JAzTSN1W+3HKIxOWMz6olhyc
	MqgBsha0IEHlyaDhPRnOx+QhqSDz1YPbzKG3ofgVQ7/vn1GFz6jjaAlqziIGzpOl3fCk9+9os77fo
	UKNqN1P3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT5y9-0006q5-6Y; Fri, 08 Nov 2019 15:14:37 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT5y3-0006pD-RM
 for openwrt-devel@lists.openwrt.org; Fri, 08 Nov 2019 15:14:33 +0000
Received: by mail-wr1-x42e.google.com with SMTP id n1so7415649wra.10
 for <openwrt-devel@lists.openwrt.org>; Fri, 08 Nov 2019 07:14:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=ncXuKNeg6oBr7BIGHLtv+k4Qhlcid3RVKb/OCgXt0cs=;
 b=GxU5Q3deAb2D0Kr0DPFEyIzBG2Iezcg1n1FmIidaFr4N2uUkfW0JqenhCR/3hd5s/x
 0kPn7Z97QVpNvzrsEyCMJI2qzLWYJxMLtb1RG4mrK54HNvFnWzpl38GWx4G3gNhVTHSa
 5Cr0SfUvnm8X6QQPOc+SouJ4H8Gvv//3ZrC1zG/79Tlog+miCiOBO1y3U5cFfaIku2+c
 tilFIYq61WMIZAyP7jHROeGCXC2+oo1a41TSZgnC3OGNKUHZylB4vi6fbNByAsz9VlLz
 mbTDVmU+aabaDskTmt19g48QplbdZIrD5JN4Tp4So7hP1cDFM2Jteybcuo4U1O6rlCWu
 5Auw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=ncXuKNeg6oBr7BIGHLtv+k4Qhlcid3RVKb/OCgXt0cs=;
 b=VWkd9dU5bSL5gXu2TOV8hB5RgC2eOtzjKMxEE2CFIzKill7Kyp7/4JnQIQlMjvOac5
 y4W3MCHjIGFyiz+eNJjt3oEWSD65FzNHMGZAR+PIqIj5oI2bPIyI2aabnIdufotlmQIg
 yfGVtyYNRu/9DuAX5xtRNL8ZEOZ94WnXyv5cTO0ab36WLvTdiwKyXUCdfWN0eW/J9xX0
 1xxx2DxV/AMI8YDw+JOZuR7MPBvSf9yFS5YNALPXF0QDTwIng/F2UaOsNudmEmGDC4V/
 x1LjtbOxa+BG4CIj7fmn5CpV6vGDvxad1WmVwx6staW+J3tduhu5lcw7GLU8bsKra49x
 q5xQ==
X-Gm-Message-State: APjAAAUcB7wSipucOamgua/Fa2hbmgnkUyxgHmamzMOQ86TXc8ALqqdn
 s/zD9dpcRyhG+VhkOHddRZDs4fTe
X-Google-Smtp-Source: APXvYqymqMVGZTJKiYAMkoHhjfF170O9IopP7L3PxoVrxicoezBxjslc/wen6kRJGrEFCC+vyGulVw==
X-Received: by 2002:adf:db0d:: with SMTP id s13mr8623589wri.319.1573226067978; 
 Fri, 08 Nov 2019 07:14:27 -0800 (PST)
Received: from mStation (host120-32-dynamic.15-87-r.retail.telecomitalia.it.
 [87.15.32.120])
 by smtp.gmail.com with ESMTPSA id p14sm7138553wrq.72.2019.11.08.07.14.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 07:14:27 -0800 (PST)
Date: Fri, 8 Nov 2019 16:14:25 +0100 (CET)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@mStation.localdomain
To: openwrt-devel@lists.openwrt.org
In-Reply-To: <01d001d582a7$2a3edd90$7ebc98b0$@adrianschmutzler.de>
Message-ID: <alpine.LNX.2.21.99999.353.1911081610340.709261@mStation.localdomain>
References: <20190917193029.1336491-1-mrkiko.rs@gmail.com>
 <20191007214054.GA14886@moc6.cz>
 <alpine.LNX.2.21.99999.353.1910080711190.3029597@mStation.localdomain>
 <01d001d582a7$2a3edd90$7ebc98b0$@adrianschmutzler.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_071431_913269_B6AEB033 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.3 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
Subject: Re: [OpenWrt-Devel] [PATCH V2] ath79: add support for TP-Link
 TL-MR6400
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
Cc: Filip Moc <lede@moc6.cz>, openwrt-devel@lists.openwrt.org,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello all! I am back again on this.
First of all - Thank you a lot Adrian for your patience and multiple reviews. I would be happy to have your signoff in the final version of the patch, of course when all of this is fixed.
Still - the main issue, that's stopping me from doing / fixing all the rest is related to the fact I am not able to understand what's goin on.
so, the problem is the ag71xx driver always believes the cable is connected to the board. Adrian gave me very useful suggestions on this, but since in ar71xx this aspect works perfectly, I guess I am doing something wrong or something changed in ag71xx driver.
Koen, can you help me on this?

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
