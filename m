Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF671BD134
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Apr 2020 02:34:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=249flhyZiKO3g4kFEITkX25x4NkgbVkKiqvXil2Zx4w=; b=j9DS8DMjTfwqyt
	0Kfnno4ROcddcI6ewjZI16lO8E3EB4supo4FnQ1GTWhX4I18ZYCkUkiB3v3XmKvYuS4m6XDxQHJiu
	IqIen5+BlmBijIzrwqs1agmyqfHxzTDe7zCZvF4xQeYrW3/tjFLFvAIA/QS6kmlqNNUACEwKbUzeD
	U5boXEqBTJm5vWyvK80BCa36uSEpe2WPotgGSB4bbdPgKRF7lI29RJIVfnqBjKLgJhi0vDN0AWJuP
	GXzU9WOSTCzw33iPaountA3GC9+Oqegb3e8FE1QuEgTDpdtD/sSq0xWTbuhN59FWK29mUmblJB7qw
	dYTQSH1nGOAKb1RVYs3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTafn-0008ID-Qb; Wed, 29 Apr 2020 00:33:59 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTafg-0008Gq-TR
 for openwrt-devel@lists.openwrt.org; Wed, 29 Apr 2020 00:33:54 +0000
Received: from mail-ej1-f41.google.com ([209.85.218.41])
 by util-01.infra.openwrt.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <e9hack@gmail.com>) id 1jTafe-0001qa-1U
 for openwrt-devel@openwrt.org; Tue, 28 Apr 2020 20:33:50 -0400
Received: by mail-ej1-f41.google.com with SMTP id gr25so144327ejb.10
 for <openwrt-devel@openwrt.org>; Tue, 28 Apr 2020 17:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=ONKcyc4oSONPgnGQgiwEclnc08KUNT131pYYJ1Qq/cU=;
 b=gUEMdZdgWKe12J+PkCVyKk/4z3jZez2iplWzsqwGBB+EOejibigKQgqH3jVAxuL9k9
 CxUC1uotabFO91EGH1GEcGESc0uGMd1R3GubObjUtH6IVxFAeXEuHxApBCIWr0R6CUZB
 GDMdYWrAd1sg1HGeKOIcI67fgaZsxqq87Wt9CFqWmx6NAPUTRGZbWa7CKQyZg6oEbPdh
 fkxGXwATj2GFJacRLuOW0dCV8BEI2Lhic6Za+o/dYFKfIJunD7HmJD3t6BPVTrI8QS+5
 WnU2XL0/aLcQKbWx/HoQBFPpPL9GtX8NiGtm5q+wavt6aWbikviw/G3y/7ZFGg/iI+pC
 ZGnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=ONKcyc4oSONPgnGQgiwEclnc08KUNT131pYYJ1Qq/cU=;
 b=Scxq2EvQPqN6wUEPTVWq0Lu+iGqnXxOd3Fo9DP538rhLB3oHp/gcBu36FBRAROYEpy
 wged+kR4bYZ2EAGDdqvz8PugPp4LXJtxhmxV5GA49IudfS0dTHCFhik0rctxqutOl4DY
 Z1/5UEVsZ2PW/9TKQr7reJUs97MdclAMBNI9NjfCRHrBpPYwxtZIQjbbH5TCBZypWsEm
 Qb8QG1ejs1AmoFoE7UzOYoKiBMTgFE0nIO30ZEC+KuuunIrroaQhWzZGnjjrZ1Gqn5nz
 EeJKHM96b2SpKifGQVlxzO9FrM3L3dtQHpNkOFo0Sfxv6u9BnN93oSjUWgLJcsMlfiY3
 pGWA==
X-Gm-Message-State: AGi0PuZIaETtA4Gg0LB7ju8l4YUNAj8MJkhjOPL+PMMLpmpRvXV/ri8+
 AdegmxNzw3lXW1Dx0jbn5Te3ueYn
X-Google-Smtp-Source: APiQypKUl/n/Hd9Zt03cyLjWY6myz6m/JtQ7CDA+eDxWBqmVVT4L9SqiwCTWEGXgSUY4n6IxphVCVA==
X-Received: by 2002:adf:8363:: with SMTP id 90mr27480057wrd.233.1588017567680; 
 Mon, 27 Apr 2020 12:59:27 -0700 (PDT)
Received: from localhost
 (p200300F6670F2EAC718EDC91420911E4.dip0.t-ipconnect.de.
 [2003:f6:670f:2eac:718e:dc91:4209:11e4])
 by smtp.gmail.com with ESMTPSA id q8sm279261wmg.22.2020.04.27.12.59.27
 for <openwrt-devel@openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Apr 2020 12:59:27 -0700 (PDT)
From: e9hack <e9hack@gmail.com>
To: openwrt-devel@openwrt.org
Message-ID: <5adc6906-b525-9da8-b777-64e388a35066@gmail.com>
Date: Mon, 27 Apr 2020 21:59:26 +0200
User-Agent: Thunderbird
MIME-Version: 1.0
Content-Language: en-GB
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-01.infra.openwrt.org", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details. Content preview:  Hi,
 is it possible to depend on kernel versions in
 package/kernel/linux/modules/lib.mk?
 Lib-lzo from kernel 5.4.x needs the additional module lzo-rle. 
 Content analysis details:   (-2.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (e9hack[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.41 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_173353_104892_15AF4DE3 
X-CRM114-Status: UNSURE (   3.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.5 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [e9hack[at]gmail.com]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] kernel packages
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

Hi,

is it possible to depend on kernel versions in package/kernel/linux/modules/lib.mk?

Lib-lzo from kernel 5.4.x needs the additional module lzo-rle.

Regards,
Hartmut 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
