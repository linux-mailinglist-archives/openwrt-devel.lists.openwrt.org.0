Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5684FA37E9
	for <lists+openwrt-devel@lfdr.de>; Fri, 30 Aug 2019 15:41:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DP/wex6KegT3o/qwjBWUyeSys1tFiHFYB34A2RnvjgI=; b=KAbSTs4SqzZC6Lf16WmaQPWGW
	1GJXd/oBd0YEmd/W913WF4KLdZJsD9GTvQNV72S81lGWvRMrw4aRJ7LYqjXvyum4icXus5zi9/tX0
	6kPVG86BF809q2q/9yB6qG8niU/r1uTdxb2uS4vEJsSpglFmt3uo1CdTat06hWvtgIWgP+fMYqveJ
	rzm6fQLgbmw9CsWu8XJEozOrpWaTB3nH7jHkBfgA/wDdmh8eQhy9+lIWtvvSBda38G2h2aoEVDDld
	cbfoiKzkx2W0MSrWD5s0UAehVgj84Egaj7jHKFcDUaSnutmSY6FK40RI3/gsj3zxEveRZ5jbiaQfL
	oJA1cQLPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3h9h-0007L9-Rt; Fri, 30 Aug 2019 13:41:33 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3h9X-0007En-QG
 for openwrt-devel@lists.openwrt.org; Fri, 30 Aug 2019 13:41:25 +0000
Received: from tmo-098-18.customers.d1-online.com ([80.187.98.18]
 helo=[192.168.43.70])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1i3h9S-00070b-RU; Fri, 30 Aug 2019 15:41:19 +0200
To: Enrico Mioso <mrkiko.rs@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <alpine.LNX.2.21.99999.352.1908301528450.4349@localhost.localdomain>
From: John Crispin <john@phrozen.org>
Message-ID: <a4a0babf-3ab6-4a77-18ea-acb101165b55@phrozen.org>
Date: Fri, 30 Aug 2019 15:39:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <alpine.LNX.2.21.99999.352.1908301528450.4349@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_064124_013922_97FA9A65 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] MT7610En bluetooth support
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
Cc: nbd@nbd.name
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDMwLzA4LzIwMTkgMTU6MjksIEVucmljbyBNaW9zbyB3cm90ZToKPiBIZWxsbyEhCj4KPiBJ
IHNhdyBjb21taXQgN2Y5ZWRhZGY4NTI5OWNkNGZjOTY1YTgxMWI0MGVhYTU3YTM2ODQ4Ngo+Cj4g
YW5kIHdhcyB3b25kZXJpbmcgaWYgd2UgY2FuIG5vdyB1c2UgdGhlIEJUIGhhcmR3YXJlIGZvdW5k
IG9uIHRoaXMgCj4gY2hpcHNldC4KPiBUaGFua3MhIQo+Cj4gRW5yaWNvCj4KaXRzIHN0aWxsIFdJ
UAoKIMKgwqDCoCBKb2huCgoKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL29wZW53cnQtZGV2ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L29wZW53cnQtZGV2ZWwK
