Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C5E80F6F
	for <lists+openwrt-devel@lfdr.de>; Mon,  5 Aug 2019 01:43:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:MIME-Version:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f6Wlv9giqsBA+LLZEWmYLmMGHG7ZuDH0jRFybAb96N0=; b=HOSCwiX8AEQRAa
	gMn23BoJqtDTNdkhwiPbZy8i9TrplAROTFStmMQtieojrJTLMOtwiy9tJzxNOdaSzPVtq0CXh3rLH
	cAvMUPbfxKNpfQCo4rO5sC2hOayIDASZswQYD8PPgIjPVJxFQvJLqMqZlGXDoQ2BPM5V73efnw/g/
	WpLV+JpSPlM7xuew/Vl01YnDMZTdC+ktrERtFTCkS+zl9fudOTjkGKJWKiuGSucvdWZrxCo2aCNdL
	/RqCSJ57Upy/Mzxu6BGY1IRvzvSkWtLkYeFa+GeDKKCnuJM7JwGGpdcAtEB02EE5dlQLceBiSGcvl
	VEOL5r8x4M3bpwy+6rPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huQA0-0005z6-L9; Sun, 04 Aug 2019 23:43:33 +0000
Received: from forward103j.mail.yandex.net ([5.45.198.246])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huQ9i-0005yh-Nv
 for openwrt-devel@lists.openwrt.org; Sun, 04 Aug 2019 23:43:17 +0000
Received: from mxback2j.mail.yandex.net (mxback2j.mail.yandex.net
 [IPv6:2a02:6b8:0:1619::10b])
 by forward103j.mail.yandex.net (Yandex) with ESMTP id D325B674094A
 for <openwrt-devel@lists.openwrt.org>; Mon,  5 Aug 2019 02:43:03 +0300 (MSK)
Received: from localhost (localhost [::1])
 by mxback2j.mail.yandex.net (nwsmtp/Yandex) with ESMTP id 5YUle6fsWc-h3R8WIP2; 
 Mon, 05 Aug 2019 02:43:03 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1564962183; bh=BwwlrhKZu6JsB9mWDP2VzKN7PZsmyKshwrWUUhp4b+A=;
 h=Message-Id:Date:Subject:To:From;
 b=hBMJbmfUuDHBGeDXyr4vxsjGsaVjI6rRqPNZSDHJ3Eg3Pfl0/HnSJNGf9XyH3iPRF
 esiDujwn/QiwnxipbQPbEkUscJst6OlG4N8hQmnk48agIxFTdejxk+CbrAoxQlzeLz
 JMJ56fFrGDBh7Syg0zICL4rMLAVvwMrR8Hl+nphA=
Authentication-Results: mxback2j.mail.yandex.net; dkim=pass header.i=@yandex.ru
Received: by iva4-64850291ca1c.qloud-c.yandex.net with HTTP;
 Mon, 05 Aug 2019 02:43:03 +0300
From: =?utf-8?B?0J3QuNC60LjRgtCwINCV0YjQutC10LXQsg==?=
 <eshkeeff.nickita@yandex.ru>
Envelope-From: eshkeeff-nickita@yandex.ru
To: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Mon, 05 Aug 2019 02:43:03 +0300
Message-Id: <17987131564962183@iva4-64850291ca1c.qloud-c.yandex.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_164315_173302_1AC8D300 
X-CRM114-Status: UNSURE (   4.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [5.45.198.246 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (eshkeeff.nickita[at]yandex.ru)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: [OpenWrt-Devel] How do I intall a shared library?
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

could anyone please explain me what is the difference between Build/Install and Package/install?

I am trying to build a shared library and install it in OpenWRT, the build is successful, but when I install the package and execute `opkg files mylib` it says that it has no installed files.

Here is the link to the Makefile https://gist.github.com/neshkeev/9f84fccd2d0faed453957c901d85911d and the build log https://gist.github.com/neshkeev/b1d5814382a5f2adf978743e28a32290

Sincerely,
Nikita Eshkeev

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
