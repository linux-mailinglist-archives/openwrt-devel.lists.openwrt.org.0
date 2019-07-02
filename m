Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5FA5D4F7
	for <lists+openwrt-devel@lfdr.de>; Tue,  2 Jul 2019 19:02:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=73F0MEv6/bYOoRkhucrc9u4Wt0bPMgUbOc2JaOYVJtY=; b=RXHYp5JAQYbFUs
	+/OjGy7qNkmZkPG9gQTjKDffGdk8LjsTPNsU5sCs4UEkQCs8H76XmKlBtkR5mOe8kXTDQT+KxKKB2
	aWQ9ljDLmfx22tDjRXduTS/7wKW0/1ZQoDwMS0Dmw7JbBCq5zlmSfcP23S9ZY96YQNafDsYufozn6
	Tl3SHLd8BZ+1PpghYY35caf1LBxp4aUQgPSiguaUH8NtAIbTvObeBT6doOXnDxYuS7Z1txLHOLIT4
	EPM5UJH6Ngv++JMu4ky4Jm+EM6MwbrT22XSY/tRK4MJcD4rJ3BoEsdXGyi4zSHNzWwiE8fdqNsJru
	IlPSxJoKVDQl3YKu+O7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiMB9-00057n-1D; Tue, 02 Jul 2019 17:02:51 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiMB1-00057c-1n
 for openwrt-devel@bombadil.infradead.org; Tue, 02 Jul 2019 17:02:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u5gdHBmir5Tny+BV9O3xljS/MmkStZWCsdgcSpzyxCI=; b=KNDO9GDUfRjWj82+hBvUT0SPow
 /uCTrzq3kraqBl4ngtaiep9j07He86OEztURLhT1Y86sHDHBQzv30QsFdpjX5cdQq8NSIDKaXZNeG
 o8MQAtCd26O//87A4i9wnfy2I2+mnr2tse9cr6U85xyh3psYuSbV++wpp4inEMRhyq07Qj0pDE8Nc
 2CI4lamzSBV4YfrjZr1mqsmdmM/PWKC/7wkyEc5EM2L80w9kwYioRaza24JNi8ZFjjWI+JbZdohdY
 /zetd4bOGowq31KPpSaVNwMmT39W1eZai/gFViinY+OXOGm+SP5oEHUjftrboWsLU6qzU2/ZAjxt8
 kGZiGXtA==;
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiMAw-0008NO-4M
 for openwrt-devel@lists.openwrt.org; Tue, 02 Jul 2019 17:02:40 +0000
X-Originating-IP: 95.90.181.59
Received: from [192.168.0.207] (ip5f5ab53b.dynamic.kabel-deutschland.de
 [95.90.181.59]) (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id AC4DDFF808
 for <openwrt-devel@lists.openwrt.org>; Tue,  2 Jul 2019 17:01:58 +0000 (UTC)
To: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
From: Paul Spooren <mail@aparcar.org>
Openpgp: preference=signencrypt
Autocrypt: addr=mail@aparcar.org; keydata=
 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
Message-ID: <1976f014-56cf-3b16-00b0-638165f71f4b@aparcar.org>
Date: Tue, 2 Jul 2019 19:01:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [RFC]split DEVICE_TITLE in multiple variables
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgYWxsLAoKc29tZSBkYXlzIGFnbyBJIHdyb3RlIHRoaXMgcHJvcG9zYWxbMF0gdG8gc3BsaXQg
REVWSUNFX1RJVExFIGluCkRFVklDRV9WRU5ET1IsIERFVklDRV9NT0RFTCBhbmQgREVWSUNFX1ZB
UklBTlQgKGhvbGRpbmcgcmV2aXNpb25zIGFuZApzdG9yYWdlIHNpemVzIGlmIGFwcGxpY2FibGUp
LgoKSSBleHRlbmRlZCB0aGUgaW1hZ2UubWsgdG8gdG8gdXNlIHRoZSBuZXdseSBpbnRyb2R1Y2Vk
IHZhcmlhYmxlcyBpZgpERVZJQ0VfVElUTEUgaXMgZW1wdHksIG1lYW5pbmcgaXQgY2FuIGJlIHVz
ZWQgYXMgYSBkcm9wIGluLgoKwqDCoCBERVZJQ0VfVElUTEUgPSAkJChERVZJQ0VfVkVORE9SKSAk
JChERVZJQ0VfTU9ERUwpJCQoaWYgJCQodmFsdWUKREVWSUNFX1ZBUklBTlQpLCAkJChERVZJQ0Vf
VkFSSUFOVCkpCgpUaGlzIHNpbXBsaWZpZXMgYW5kIHVuaWZpZXMgdGhlIERFVklDRV9USVRMRSBj
cmVhdGlvbiBhbmQgaW50cm9kdWNlcyB0aGUKcG9zc2liaWxpdHkgdG8gc2VhcmNoIGFuZCBzb3J0
IGRldmljZXMgYmFzZWQgb24gdmVuZG9yIGV0Yy4gQSBwcm9vZiBvZgpjb25jZXB0IGlzIGF2YWls
YWJsZSBoZXJlWzFdLgoKSW4gZnV0dXJlIFBScyBJJ2QgcmV3b3JrIGV4aXN0aW5nIHRhcmdldHMg
KG5vdCBvbmx5IGF0aDc5IGFzIGluIFswXSkgYW5kCnN1Z2dlc3QgZGV2ZWxvcGVycyBhZGRpbmcg
bmV3IGRldmljZXMgdG8gdXNlIERFVklDRV9NT0RFTCByYXRoZXIgdGhhbgp0aGUgZnVsbCBERVZJ
Q0VfVElMRSBpbiB0aGVpciBwYXRjaGVzLgoKSSdkIGJlIGhhcHB5IHRvIGhlYXIgc29tZSBjb21t
ZW50cyEKCkJlc3QgcmVnYXJkcywKUGF1bAoKWzBdOiBodHRwczovL2dpdGh1Yi5jb20vb3Blbndy
dC9vcGVud3J0L3B1bGwvMjEyNApbMV06IGh0dHBzOi8vc3VkaGFuc2h1MTYuZ2l0aHViLmlvL29w
ZW53cnQtZmlybXdhcmUtc2VsZWN0b3IvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2
ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL29wZW53cnQtZGV2ZWwK
