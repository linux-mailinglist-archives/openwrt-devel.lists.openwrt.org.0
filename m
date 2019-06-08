Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A994839BFB
	for <lists+openwrt-devel@lfdr.de>; Sat,  8 Jun 2019 11:08:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kQ2u1g/YyRqzkDARQHdm8Nnzmmoe7RLgA4k62AgzVBI=; b=uO3rDCLZqd07YO
	L6pV8U3aKjSRktMhAMq2Zb6kxJOWFajtme3mFlhZK6Bq39hmoZdJuEffztItp2Pgj0ja8e5snY4DB
	VZ5Bvx3DtOCBZjI0YUGuM2xft2SRJd1zPNMVuc9qbwDyKgTA/mMX2bZ4rgc7Ej4Oht5NsYIJ7u3v2
	ytc9MkJqk4n3pDRkcxO8u4QMySFxO9vNIb3l6OFexLioFfbbF74LGJrzgPe1gZUefwbUjbI4u6V7W
	34nNcqYPM37HVewqvW6zEVOFxZzWqUNcSSzgi/+RMHy5lygsZvPesLl92hWh0j2Z4QiuLexY6Dj4X
	yyzSnIu5oyC5g321yQRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZXL9-0008BJ-V5; Sat, 08 Jun 2019 09:08:43 +0000
Received: from pb-smtp21.pobox.com ([173.228.157.53])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZXL0-0008Ah-P3
 for openwrt-devel@lists.openwrt.org; Sat, 08 Jun 2019 09:08:36 +0000
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
 by pb-smtp21.pobox.com (Postfix) with ESMTP id 8DC477FC3E;
 Sat,  8 Jun 2019 05:08:29 -0400 (EDT)
 (envelope-from daniel.santos@pobox.com)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=to:cc:from
 :subject:message-id:date:mime-version:content-type
 :content-transfer-encoding; s=sasl; bh=jFkOIkwtY1j9QwTNMffRGuqkA
 v8=; b=aeVIpH+r/etQ7zYRVtxNAvP5d5TvIFEZoDQVjLyrzfmtVOqYjtzRdzubY
 9sWathkAZ6zpJxBsQXkpueKXljX/6UC476HH1tOU6LC14RN0qz4eTkbrv5Gr84/1
 rYql2yUrFpqfqoyKwNLI4tuRpeJlo4FK2ofGAxTJLMW6ORvKy4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=pobox.com; h=to:cc:from
 :subject:message-id:date:mime-version:content-type
 :content-transfer-encoding; q=dns; s=sasl; b=g/U8etg3g9LIUJtBBkG
 A2hdB3EeC/irrXuvdRs2xJkFbsluNlV9XnJn58WCpj9xUb5+CGr3Ievz/c/Et4gn
 f6YhktVBSIfprM+U9BKY4RCBwh1TlippUu4yloBkOGiIomfyBbn3csKDznPeSXlb
 mtrLWsXg4Rtzoaektvxci1fg=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
 by pb-smtp21.pobox.com (Postfix) with ESMTP id 856517FC3D;
 Sat,  8 Jun 2019 05:08:29 -0400 (EDT)
 (envelope-from daniel.santos@pobox.com)
Received: from [192.168.2.4] (unknown [70.142.57.80])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by pb-smtp21.pobox.com (Postfix) with ESMTPSA id A65C37FC3C;
 Sat,  8 Jun 2019 05:08:26 -0400 (EDT)
 (envelope-from daniel.santos@pobox.com)
To: Felix Fietkau <nbd@nbd.name>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
From: Daniel Santos <daniel.santos@pobox.com>
Message-ID: <5316c6da-1966-4896-6f4d-8120d9f1ff6e@pobox.com>
Date: Sat, 8 Jun 2019 04:06:54 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-Pobox-Relay-ID: F9E6FF60-89CC-11E9-9083-8D86F504CC47-06139138!pb-smtp21.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_020834_858583_EAF53691 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [173.228.157.53 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Using ethtool or swconfig to change link settings
 for mt7620a?
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
Cc: netdev@vger.kernel.org, Vitaly Chekryzhev <13hakta@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGVsbG8sCgpJIG5lZWQgdG8gY2hhbmdlIGF1dG8tbmVnb3RpYXRlLCBzcGVlZCBhbmQgZHVwbGV4
IGZvciBhIHBvcnQgb24gbXkKbXQ3NjIwYS1iYXNlZCBkZXZpY2UsIGJ1dCBJJ20gbm90IHF1aXRl
IGNlcnRhaW4gdGhhdCBJIHVuZGVyc3RhbmQgdGhlCnN0cnVjdHVyZSBoZXJlLsKgIFdoZW4gdXNp
bmcgZXRodG9vbCBvbiBldGgwIEkgYWx3YXlzIGdldCBFTk9ERVYsCmFwcGFyZW50bHkgYmVjYXVz
ZSBwcml2LT5waHlfZGV2IGlzIGFsd2F5cyBOVUxMIGluIGZlX2dldF9saW5rX2tzZXR0aW5ncwpv
ZiBkcml2ZXJzL25ldC9ldGhlcm5ldC9tdGsvZXRodG9vbC5jLsKgIEJ1dCBJJ20gYmVpbmcgdG9s
ZCB0aGF0IGV0aDAgaXMKb25seSBhbiBpbnRlcm5hbCBkZXZpY2UgYmV0d2VlbiB0aGUgwrVDIGFu
ZCB0aGUgc3dpdGNoIGhhcmR3YXJlLCBzbyBpdAppc24ndCBldmVuIHRoZSBvbmUgSSBuZWVkIHRv
IGNoYW5nZS4KCklmIHRoaXMgaXMgdHJ1ZSwgdGhlbiBpdCBsb29rcyBsaWtlIEkgd2lsbCBuZWVk
IHRvIGltcGxlbWVudCBhCmdldF9wb3J0X2xpbmsgZnVuY3Rpb24gZm9yIHN0cnVjdCBzd2l0Y2hf
ZGV2X29wcz/CoCBDYW4gYW55Ym9keSBjb25maXJtCnRoaXMgdG8gYmUgdGhlIGNhc2U/wqAgQWxz
bywgYXJlIHRoZXJlIGFueSBleGFtcGxlcyBhc2lkZSBmcm9tIHRoZQpCcm9hZGNvbSBkcml2ZXJz
P8KgIEkgaGF2ZSB0aGUgbXQ3NjIwIHByb2dyYW1tZXIncyBndWlkZSBhbmQgaXQgc3BlY2lmaWVz
CnRoZSByZWdpc3RlcnMgSSBuZWVkIHRvIGNoYW5nZS4KClRoYW5rcywKRGFuaWVsCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1h
aWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMu
b3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
