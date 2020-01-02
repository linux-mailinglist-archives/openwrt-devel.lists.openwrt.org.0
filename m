Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D543612E98A
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Jan 2020 18:49:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0RqrruzM7N4gwJWKzr2QslPOumlk7gCxgcMfykoqxeA=; b=B0/JhJT3/va/WrB9MXjKLh60q
	7/kFjVwZ88OehRPqFruRTzly5ftrn63KuVnR5cvSBxWlQBfAnxDqAQCJYy5i5jv8Hq+/T3BgqbbvQ
	EIndIEufsKDXC+C8rt6AJssR07sVqPqsgA26L1gRQvXkjZ4U5hBH0PunGQoe4doIZrmK0THeHPzsd
	5fqiuEtNSFbYvOsLoiYuIQkHY6M5nqykfJlMq6D1NeESy/aEwik7JqwXLBSroMZVzlopo/5k0AdAP
	PsK8KUyuiRQ9/wRX7ObCx+qOBENBbXc7UuEnkwWXCx44yo2LfYdycwcZJnf0f/8Ca/CeT8zBkKAt/
	cyJZVi4tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in4b4-0001CN-Go; Thu, 02 Jan 2020 17:49:22 +0000
Received: from welho-filter4.welho.com ([83.102.41.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in4aw-0001Bt-BQ
 for openwrt-devel@lists.openwrt.org; Thu, 02 Jan 2020 17:49:16 +0000
Received: from localhost (localhost [127.0.0.1])
 by welho-filter4.welho.com (Postfix) with ESMTP id EEDEA4EE00;
 Thu,  2 Jan 2020 19:49:09 +0200 (EET)
X-Virus-Scanned: Debian amavisd-new at pp.htv.fi
Received: from welho-smtp3.welho.com ([IPv6:::ffff:83.102.41.86])
 by localhost (welho-filter4.welho.com [::ffff:83.102.41.26]) (amavisd-new,
 port 10024)
 with ESMTP id va09LtwPL2ls; Thu,  2 Jan 2020 19:49:09 +0200 (EET)
Received: from [192.168.1.180] (87-100-240-191.bb.dnainternet.fi
 [87.100.240.191])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by welho-smtp3.welho.com (Postfix) with ESMTPS id C974B2308;
 Thu,  2 Jan 2020 19:49:04 +0200 (EET)
To: =?UTF-8?Q?Petr_Nov=c3=a1k?= <petrn@me.com>, openwrt-devel@lists.openwrt.org
References: <20191231095801.GK70184@meh.true.cz>
 <46C7C775-CDBB-4E84-8C7F-A0F949F1F981@me.com>
 <20191231134925.GL70184@meh.true.cz>
 <C9B93DB4-A2CA-455B-8B4F-E7A23E34D141@me.com>
 <20200101124453.GM70184@meh.true.cz>
 <2DF80201-77E5-4301-9046-67165E5A8B9C@me.com>
 <20200101161447.GQ70184@meh.true.cz>
 <DC52BD3D-AB2B-426F-A184-C1F7664BB076@me.com>
 <20200101200825.GR70184@meh.true.cz>
 <C6E8AA31-AE61-40F5-881B-A69A2007272B@me.com>
 <20200101204630.GS70184@meh.true.cz>
 <5e23fc80-72c7-5fe8-cf61-1b1390844a64@iki.fi>
 <60DBDE96-C4EB-42D9-8927-DF7771685F0A@volatilesystems.org>
 <5B5E9BA4-0BE8-4FDD-B089-35658B983306@me.com>
From: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <83f2c4de-f317-fcca-d695-3c03510b216c@iki.fi>
Date: Thu, 2 Jan 2020 19:49:07 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101
 Thunderbird/72.0
MIME-Version: 1.0
In-Reply-To: <5B5E9BA4-0BE8-4FDD-B089-35658B983306@me.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_094914_557675_175D9408 
X-CRM114-Status: UNSURE (   6.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [83.102.41.26 listed in list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Sysupgrade possibly broken in recent
 development snapshots: "message": "Firmware image couldn't be validated"
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
Cc: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 Stijn Segers <foss@volatilesystems.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGV0ciBOb3bDoWsga2lyam9pdHRpIDIuMS4yMDIwIGtsbyAxOS40MDoKPiBROiBhcmUgYWxsIHRo
ZSBwbGF0Zm9ybXMgd2hlcmUgdGhpcyBwcm9ibGVtIGhhcyBiZWVuIG9ic2VydmVkIG11bHRpLWNv
cmUgKGxpa2UgdGhlIFJQaTQgb3IgbXQ3NjIxKSBvciBoYXMgdGhpcyBldmVyIGJlZW4gZXhwZXJp
ZW5jZWQgb24gYSBzaW5nbGUgY29yZSBzeXN0ZW0/Cj4KPiBXYXMgdGhlIFFlbXUgdGVzdCBQZXRy
IFMuIGhhcyBkb25lIGJlZW4gcnVubmluZyBhIG11bHRpLWNvcmUgb3Igc2luZ2xlIGNvcmUgZW11
bGF0aW9uPwo+CgpNeSB0cnVzdHkgb2xkIFdORFIzNzAwdjIgaXMgYW4gb2xkIHNpbmdsZS1jb3Jl
IGRldmljZSB3aXRoIEF0aGVyb3MgQVI3MTYxLgoKU28sIG5vdCBvbmx5IGEgbXVsdGktY29yZSBp
c3N1ZSwgYnV0IGFsc28gYWZmZWN0aW5nIHNpbmdsZSBjb3JlIGRldmljZXMuCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFp
bGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
