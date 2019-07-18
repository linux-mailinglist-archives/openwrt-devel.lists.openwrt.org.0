Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B20C86C40F
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jul 2019 03:15:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:Mime-Version:Date:Message-ID:
	From:To:References:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Wd0vxzvVQYxzZZNQpQjpUWpUv/rVIX6sb0SJyvY1VFk=; b=a98lW1S64Dw/ULmzBeZn4F66Y
	a5OaEcrNKheezzhU8yWGdPa/ZaN1YdYl17brukTzlGaNAcPfA8f1TYeLRnX3YipVDwAVZtgEJ+xlo
	2uv1PbGS07l3Rfal2Bf9W3UG4a57hxxvR9gOGTF0niU7WWOixHXicBKZudTe1K7Yuxriso2Erd4eb
	5fvBGjZiBMCahfDwGLwZfRiZRXKoPIC5Nyu5ZzldnwZEPFjf35pJOW623wTa8HEZqtJnoSCC+X9lq
	niBsLYSSbk1IXGGh85Jpkdf/z86QacLqgkB+gWk7Rr6HtbMHczbb+23amlNtTMvo7kNjkCT3sr+z8
	39X8HuNrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnv10-0006FS-VZ; Thu, 18 Jul 2019 01:15:23 +0000
Received: from knopi.disroot.org ([178.21.23.139])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnv0b-0005sD-V1; Thu, 18 Jul 2019 01:14:59 +0000
Received: from localhost (localhost [127.0.0.1])
 by disroot.org (Postfix) with ESMTP id 2113837189;
 Thu, 18 Jul 2019 03:14:56 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at disroot.org
Received: from knopi.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gCLN0H-Itmzn; Thu, 18 Jul 2019 03:14:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
 t=1563412495; bh=B2xsuUdUispOz3q7OcekWgEXR5zmt+wUPh6tKkOUT64=;
 h=Subject:References:To:From:Date:In-Reply-To;
 b=Pgr+lAc2LrNrBf4K2D4zEZu1iLcXCKZbsiMfGlNM4PwcW2Jx0waIrBstJteZv+Ng5
 0P+Y7Od02w2jgSARJTP605uV5joMolrR7oheHgJ/sw49oO2mTpACTlW/eKYETOXdkd
 q/nUMrWy+6RhVnrqdw5b1oYn0pp6y8JqdeGjaA6jhVrXMB66chSaGsOYeN1Y/amUEC
 Lc7P8SsfdYTrIXOVED97VyEFuK1V+5IbU3La/GhihxPqfRsOmhDBFzLQJis2Q48Mku
 Qbs7J18UDqnkLWZozzaq5xdxzVBMXgy1Dde6c8LJZNwYAzWQZpMvmGKl9LsJYjpnps
 ExgLKe0FGtjmw==
References: <1c19841f-329f-e5d3-f7ed-e7c7b96dd9f4@disroot.org>
To: openwrt-devel@lists.openwrt.org, openwrt-adm@lists.openwrt.org
From: SkullFace <skullface101@disroot.org>
X-Forwarded-Message-Id: <1c19841f-329f-e5d3-f7ed-e7c7b96dd9f4@disroot.org>
Message-ID: <02ae5038-fe1e-cd3e-da0f-9b2bbf412ff9@disroot.org>
Date: Thu, 18 Jul 2019 03:13:58 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
Mime-Version: 1.0
In-Reply-To: <1c19841f-329f-e5d3-f7ed-e7c7b96dd9f4@disroot.org>
Content-Language: en-US
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_181458_144891_CF1E2093 
X-CRM114-Status: UNSURE (   3.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.21.23.139 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] Special features request!
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkKCgpJIHdvdWxkIGxpa2UgdG8gYXNrIG9wZW53cnQgdGVhbSB0byBhZGQgc29tZSBzcGVjaWFs
IGZlYXR1cmVzIHRoYXQgaSBuZWVkLgoKSSB3aWxsIHVzZSBjcm93ZCBmdW5kaW5nIHRvIGNvbGxl
Y3QgdGhlIG1vbmV5IQoKMS1JIG5lZWQgZnVsbCBjb250cm9sIG92ZXIgTGFudGlxIHhEc2wgZmly
bXdhcmUgdXNpbmcgYm90aCBHVUkgYW5kIENMSS4KCjItSSB3YW50IHRvIG92ZXJyaWRlIExpbmUg
Q29uZmlnIGVuZm9yY2VkIGJ5IERTTEFNL0RMTSwgW1NOUiwgUG93ZXIsIApJbnRlcmxlYXZpbmcs
IEcuSU5QLCBCaXRTd2FwLCBWZWN0b3JpbmcsIFJhdGUgQWRhcHRhdGlvbi4uLi5ldGNdLgoKMy1t
b3JlIGFkdmFuY2VkLCBzdGFibGUgYW5kIGNvbmZpZ3VyYWJsZSBWUE4gY2xpZW50cy9TZXJ2ZXJz
LCBQcm94eSAKQ2xpZW50L1NlcnZlcnMsIE9iZnVzY2F0aW5nIFByb3h5IGNsaWVudHMvU2VydmVy
cy4KCjQtQWR2YW5jZWQgTHVjaSBBZGRvbnMgZm9yIENMSSBvbmx5IHBhY2thZ2VzLgoKNS1TdGFi
bGUgcGVyIHVzZXIgYmFuZHdpZHRoIG1vbml0b3IgYW5kIGxpbWl0ZXIuCgo2LVBlciB1c2VyIHNw
ZWVkIGxpbWl0L3Byb3ByaWV0eS4KCjctU3VwcG9ydCBmb3Igb3RoZXIgdW5zdXBwb3J0ZWTCoCB4
RHNsIENoaXBzCgo4LVN1cHBvcnQgZm9yIHRoZSB3aWRlIHNwZWFkIElTUCByb3V0ZXJzLgoKU28g
aSB3YW50ZWQgdG8gcHVibGlzaCBhIFBhdHJlb24gcGFnZSB0byBjb3ZlciB0aGUgY29zdHMsIGhv
d2V2ZXIgaSBjYW50IApjb21wbGV0ZSBhbmQgcHVibGlzaCB0aGUgcGFnZSB3aXRob3V0IGtub3dp
bmcgdGhlIG1vbmV5IHJlcXVpcmVkIHRvIApmaW5pc2ggdGhlc2UgdGFza3MgYW5kL29yIGhpcmUg
bW9yZSBwcm9ncmFtbWVycyB0byBoZWxwIGZpbmlzaCB0aGUgdGFza3MgCnF1aWNrZXIuCgpIb3cg
bXVjaCBtb25leSBpcyByZXF1aXJlZCB0byBhY2NvbXBsaXNoIHRoZSB0YXNrcyAxLTM/ISBhbmQg
aG93IG11Y2ggCnRpbWUgaXMgbmVlZGVkPwoKVGhhbmtzCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9w
ZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
