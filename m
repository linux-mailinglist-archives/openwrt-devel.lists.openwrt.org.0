Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE97139D7
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 May 2019 14:40:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hyUOq9//CrcWFMWr6CV4/+e4yJE5M7yNv1eWnnm9zZc=; b=OEs0en6cwfaz4o
	IQgZ+gy0gkVjTeVMJ8vdWvu9/3tHfghCbFqgzVNeZtPFEzGW+qHdueOWKBeBNMuUQEuXyD6RP9krs
	4HCdt/vDS5V+1AVq3eBRwpLAP/DiZR4jVGZamoHju4kyknj1q4qNHx2CB796Ysk5kWxxw0Bb+0Ccv
	364WMd2vxSbeArmCrqe9tvQrVSLDAohYPgHG/zJknmpxkf1q8IuEm4plJUF0hRLcsWjQTUCTrJApS
	gUc3M8OomUbnIoS4QXGjuDD4ckCBX4enU7zrDMAwpOaNAWn8CTsuue8WUBQrKzKfmq+T8QyAld/bt
	MlKRIaaqCHNHmsWWfwYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMtxI-0008K9-EM; Sat, 04 May 2019 12:39:52 +0000
Received: from mx-out.tlen.pl ([193.222.135.158])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMtxB-0008Ji-8D
 for openwrt-devel@lists.openwrt.org; Sat, 04 May 2019 12:39:47 +0000
Received: (wp-smtpd smtp.tlen.pl 40645 invoked from network);
 4 May 2019 14:39:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1556973579; bh=JcmTYhcuk0VcUygjYHsXJ1WYOSJT88eQt70UjGPyFqk=;
 h=Subject:To:Cc:From;
 b=E/Y6FOmptkfx3YEit2hBLfJMyB7OZZZacTUIpb4SVyx7s9CBG+UB3iT6cTFmuLou4
 ysUP918wVcpMbLUhCvSmfxCD2bNqVryB0ieB/Wxk6cookuUkKaAlMcLd6zKIPkwSIQ
 3Kdj7pzV1/CR4UkNK7f5/UHIZcsTAm5llONwMa7A=
Received: from 131.ip-164-132-48.eu (HELO [10.8.0.6])
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 4 May 2019 14:39:39 +0200
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <20190501174354.19409-1-tomek_n@o2.pl>
 <20190503112124.GK346@meh.true.cz>
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <429c18c8-ae90-ffc0-0c54-7ca6a8a2a7a8@o2.pl>
Date: Sat, 4 May 2019 14:39:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503112124.GK346@meh.true.cz>
Content-Language: en-US
X-WP-MailID: 5632585b119ec0e191b4dc5805fc9f46
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [oRO0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_053945_619257_EBAD856D 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] tegra: add vendor string to device name
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCgpXIGRuaXUgMDMuMDUuMjAxOSBvwqAxMzoyMSwgUGV0ciDFoHRldGlhciBwaXN6ZToKPiBU
b21hc3ogTWFjaWVqIE5vd2FrIDx0b21la19uQG8yLnBsPiBbMjAxOS0wNS0wMSAxOTo0Mzo1NF06
Cj4gCj4gSGksCj4gCj4+IGZvciBiZXR0ZXIgaWRlbnRpZmljYXRpb24uIEFsc28gY3JlYXRlIFNV
UFBPUlRFRF9ERVZJQ0VTIHN0cmluZyBmcm9tIGl0Cj4+IHdoaWNoIGNvcnJlc3BvbmRzIHRvIGR0
cyBjb21wYXRpYmxlIHN0cmluZy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogVG9tYXN6IE1hY2llaiBO
b3dhayA8dG9tZWtfbkBvMi5wbD4KPiAKPiAuLi4KPiAKPj4gIGRlZmluZSBVLUJvb3QvdHJpbXNs
aWNlCj4+ICAgIE5BTUUgOj0gQ29tcHVMYWIgVHJpbVNsaWNlCj4+IC0gIEJVSUxEX0RFVklDRVMg
Oj0gdHJpbXNsaWNlCj4+ICsgIEJVSUxEX0RFVklDRVMgOj0gY29tcHVsYWJfdHJpbXNsaWNlCj4+
ICAgIFVCT09UX0lNQUdFIDo9IHRyaW1zbGljZS1tbWMuaW1nIHRyaW1zbGljZS1zcGkuaW1nCj4g
Cj4gd2hhdCBhYm91dCB0aGlzIGZpbGVzPyBTaG91bGRuJ3QgeW91IHJlbmFtZSB0aGVtIGFzIHdl
bGw/CgpUaGF0IGNvdWxkIGJlIGRvbmUsIGJ1dCBJIGxlZnQgaXQgYXMgaXMsIHRvIGJlIGluIGxp
bmUgd2l0aCBjYm9vdGltYWdlLWNvbmZpZ3M6Cmh0dHBzOi8vZ2l0aHViLmNvbS9OVklESUEvY2Jv
b3RpbWFnZS1jb25maWdzL2Jsb2IvN2MzYjQ1OGI5M2VkNjk0N2NkMDgzNjIzZjU0M2U5M2Y5MTAz
Y2MwZi90ZWdyYTIwL2NvbXB1bGFiL3RyaW1zbGljZS90cmltc2xpY2UtbW1jLmltZy5jZmcjTDIy
Cgo+IAo+IC0tIHluZXp6Cj4gCgpSZWdhcmRzCgotLSAKVE1OCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
