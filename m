Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E78DC48F3
	for <lists+openwrt-devel@lfdr.de>; Wed,  2 Oct 2019 09:59:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oypQRZK82AcmpombfcqvEbVuWYlWIkXLC4X9h3ztgvQ=; b=oF5UmXI8rtOmRU
	Yvq45pLyPYu3eUoKzqGidkYPjNQBzO4I4tpux7nDSVOyTM+pkhYWNJBD63C70d1h3UqD7QxoyQ2vt
	E/DcjZZGH9CRrsSBErIb7DNXzlgkyE9xefui2uIrv0tCeJxRoJekr8qAuZSf3ApkgquA5e9f3CUyo
	Od42JQfL5TLIv+h4TypEzHxGiADSYJiA6cvvts8GYGIzUSoNAxJp5yx2PY2xj4GIC1Z5xcTBEho7a
	UUkstcH//O7YTcxJGMHsapIj8Nnz2DaVTbbpYqVJzA+oztqup+Hpse2EX24H/75eEvFmnVz3Wx9LE
	VzjDasr9cS4GkKRAfySQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFZXf-0004fS-Uu; Wed, 02 Oct 2019 07:59:24 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFZXX-0004ex-Gm
 for openwrt-devel@lists.openwrt.org; Wed, 02 Oct 2019 07:59:16 +0000
Received: by mail-yb1-xb42.google.com with SMTP id 206so6005897ybc.8
 for <openwrt-devel@lists.openwrt.org>; Wed, 02 Oct 2019 00:59:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=IoMf4vwNaqxKyUQ3kbobpp7gP3DN3YOd5nsyPUSKprU=;
 b=nGTIwEfiV2KRPR57HVV7bqnje4lidUBmgdEPQ8u/rI/FLSDRybxSOFjwH0Kx0q3gDY
 HjWgvJnZru5E3Q23ljufZYI2LuekqTOq9/LY6esC+iqnHECCCd5fQ0MjNnaYO7Km+zdp
 5F9YqS4cdIJDUmruod8NVGof76bd+MY3NEQdL8cdbhtnBClNnffRhmYzF/lqlplYR0RL
 6wBeXt8CkV+xeQ3tB7oqwIspoJnZeLYN2t8hSYzlSZYW7j2IhKk+X64ry7J2alIPvx0q
 RX3OJE4bhzymbzmWjgLL5YaQAXImaD98CijBqLSMGLPRseu/JMxbb4GP8NqVmxnwxI91
 hBqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=IoMf4vwNaqxKyUQ3kbobpp7gP3DN3YOd5nsyPUSKprU=;
 b=Hcqss+UfhC1byCSvjEXk0opDIOZye2FNAjJ2b8bcDLxjVFZvgMpvMGJfIxvsBtoZkc
 p8EDvWS+pUavwBSRTsC+Juy/8JJXF95XpKQK1+hpPnVSsBNhzgyTHxOi+VPu5BePH6DA
 gGT7SX6O5+7XcguCJrzHw5A/BxYvyp2M3hofK1+NqQVoPkaUwGOgwUXzAiaVYjXo1iYQ
 iv9zYw90JGQZPnPltG+MOwjwy5EIGxXIuKy4xu44f7tfSDfgjlsIfyjMq+gEl2lhL/xp
 FbDDwP8ccKx4nGXXgagTA/96B+GxEB1zbxztx5DuhIRIJuNtkyBPbXn0Rb1MowM1L1a6
 qFhg==
X-Gm-Message-State: APjAAAWRLqM4KF5CqJo+C6baJBMW4hZEl4NEL+oeudhqMfwohFhOBDrR
 FXvxhCemar42a4Ev5k500na2Rpb5c14LGSmkl3ayFPwv
X-Google-Smtp-Source: APXvYqy8zeEbeBlivlSdCAAyJBlylr5JBA/D58BW8SIPYxnvyqVz55X+WfVHxgGjw7uYDZvvLyKRByQLTHQdZqFAznI=
X-Received: by 2002:a25:3185:: with SMTP id x127mr1597630ybx.455.1570003152960; 
 Wed, 02 Oct 2019 00:59:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190925155543.9061-1-zajec5@gmail.com>
In-Reply-To: <20190925155543.9061-1-zajec5@gmail.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Wed, 2 Oct 2019 09:59:00 +0200
Message-ID: <CACna6rxQEAM24=4e0uTOcMPkQSt88feZrMeawhCA9+V+xW03BQ@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Jo-Philipp Wich <jo@mein.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_005915_594088_A74D69A9 
X-CRM114-Status: UNSURE (   5.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH luci] luci-mod-system: check for
 sysupgrade with backup possibility
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
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkLCAyNSBTZXAgMjAxOSBhdCAxNzo1NSwgUmFmYcWCIE1pxYJlY2tpIDx6YWplYzVAZ21h
aWwuY29tPiB3cm90ZToKPiBGcm9tOiBSYWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+
Cj4KPiBTb21lIGZpcm13YXJlIGltYWdlcyBtYXkgbm90IHN1cHBvcnQgcHJlc2VydmluZyBiYWNr
dXAuIEluIHN1Y2ggY2FzZXMKPiBkaXNwbGF5IGEgd2FybmluZyBhbmQgZGlzYWJsZSByZWxldmFu
dCBjaGVja2JveC4KClNpZ25lZC1vZmYtYnk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNr
aS5wbD4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9w
ZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
