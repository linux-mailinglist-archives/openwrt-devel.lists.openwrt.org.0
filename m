Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1383BD0D94
	for <lists+openwrt-devel@lfdr.de>; Wed,  9 Oct 2019 13:24:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:Date:Mime-Version:To:From:References:In-Reply-To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KaaiMErOIC/hL4aYXQHkUZR2gh9dCrqtPiAgZcQXl7A=; b=WW8vuZMmwIk05Eue9GFH2liiY
	2ww7I4vpkAzzKFHS5WywLOXhKlS7MasPDiFA2gssBpugR9xKRY8Wr2EYZusmPvomIpKXv80zMyvLY
	aI84UG4XtqG6VVpBcIaW4fPmOwqvFP0I8zqru2gsM1LE9hDOLxwxaRlPbXDB4SUMY3Zg/IVf4WCzt
	yma0lokU/cqWCu6Y22mkmPWO86Slx4/NW6dra1juKttRUSbS7Bk6XtVv8VMlZj104ZhtEhnf54QxV
	5gfzv6e+R96YVJQRge24eCNxXSRpy7VQncGtsRFTWVCQDIIkNnuBoYGvKunRRGOh4GoZZTwTLyEjH
	afTHFn2IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIA4d-0007hC-VQ; Wed, 09 Oct 2019 11:24:07 +0000
Received: from smtpbguseast2.qq.com ([54.204.34.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIA4U-0007gE-3s
 for openwrt-devel@lists.openwrt.org; Wed, 09 Oct 2019 11:24:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1570620181; bh=mf2U3jq+q2Z1HJf1+Mc6K3yZ4H0Ra09qkdoPH6ATHNA=;
 h=From:To:Subject:Mime-Version:Date:Message-ID;
 b=LahDqVCUnK98CTHxcLJhxAjsM6ES46kxez7lSlqLZpXhKdqlhNkTq6NFo6Ha2P1bI
 yPJZ7XQRzLlpJbMiBWsBx8+A3CPVodM3t7i7TmGgRzhHziueH+6AKzJbZAtgn1exkS
 KnNrB1ioR6pZBvQA/Ke4m8iPcUryiiOIKcDa6rRA=
X-QQ-FEAT: 2qHYTc5/T5O0fZVoiazRTUbRKb5DeF82uzVcD6HocrdEmBwxVkFSj0iw9hnl/
 +O4F7D8JwMnplzmRnc4+ZpalH9IMfuB9rBGGo3pwq8TVDaHPcTXh3NG9ryNoryQfsr1HdeY
 0Vs8Dozs6CeRAl0hgl2Oy6IOcZb8NFKF6HFF7KgNEcATVmnWhD+KzZ7xiuSIaiXrf8/I89l
 2a7nhJOTMV+ZcLODCGF4JLLqhLLWXbJSUmk3E2EgzQ57NhWzu3R3n8qYlYG3cpFBDsC8nPX
 98aqaXeyZ6CQCKwfPeZXxH6ux6W7gbS405oA==
X-QQ-SSF: 00000000000000F000000000000000Z
X-HAS-ATTACH: no
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 125.121.83.254
In-Reply-To: <tencent_B5943D7D59BDF02DEDECDDCF96F8B195E40A@qq.com>
References: <1570526416-4180-1-git-send-email-wurobinson@qq.com>
 <007b01d57dd7$3c9228f0$b5b67ad0$@adrianschmutzler.de>
 <tencent_B5943D7D59BDF02DEDECDDCF96F8B195E40A@qq.com>
X-QQ-STYLE: 
X-QQ-mid: webmail438t1570620180t324574
From: "=?gb18030?B?x9LM/bfn0vc=?=" <wurobinson@qq.com>
To: "=?gb18030?B?QWRyaWFuIFNjaG11dHpsZXI=?=" <mail@adrianschmutzler.de>
Mime-Version: 1.0
Date: Wed, 9 Oct 2019 19:23:00 +0800
X-Priority: 3
Message-ID: <tencent_9FE34BB6D83E73909E2AAD98F8D27710EF09@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-ReplyHash: 35771110
X-QQ-SENDSIZE: 520
Received: from qq.com (unknown [127.0.0.1]) by smtp.qq.com (ESMTP) with SMTP
 id ; Wed, 09 Oct 2019 19:23:01 +0800 (CST)
Feedback-ID: webmail:qq.com:bgforeign:bgforeign4
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_042358_286699_90115B69 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.204.34.130 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wurobinson[at]qq.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
Subject: [OpenWrt-Devel] =?gb18030?b?UkWjulJFOiAgW1BBVENIIHY0IDEvM10gcmFt?=
 =?gb18030?q?ips=3A_add_support_for_JS7628_development_board?=
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
Cc: =?gb18030?B?b3BlbndydC1kZXZlbA==?= <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============0463536382956071433=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.

--===============0463536382956071433==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_5D9DC314_0980F258_4B333236"
Content-Transfer-Encoding: 8Bit

This is a multi-part message in MIME format.

------=_NextPart_5D9DC314_0980F258_4B333236
Content-Type: text/plain;
	charset="gb18030"
Content-Transfer-Encoding: base64

SGksDQogSSBzZW5kIGEgbmV3IHBhdGNoIGZvciB0aGUgSlM3Nng4IGJvYXJkcywgYXMgeW91
ciBhZHZpY2VzLiBIb3BlIGl0IHdpbGwgYmUgYWNjZXB0ZWQgc29vbi4gVGhhbmsgeW91Lg0K
ICANCiBCZXN0DQogIA0KIFJvYmluc29uIFd1

------=_NextPart_5D9DC314_0980F258_4B333236
Content-Type: text/html;
	charset="gb18030"
Content-Transfer-Encoding: base64

PERJVj5IaSw8L0RJVj4NCjxESVY+SSBzZW5kIGEgbmV3IHBhdGNoIGZvciB0aGUmbmJzcDtK
Uzc2eDggYm9hcmRzLCBhcyB5b3VyIGFkdmljZXMuIEhvcGUgaXQgd2lsbCBiZSBhY2NlcHRl
ZCBzb29uLiBUaGFuayB5b3UuPC9ESVY+DQo8RElWPiZuYnNwOzwvRElWPg0KPERJVj5CZXN0
PC9ESVY+DQo8RElWPiZuYnNwOzwvRElWPg0KPERJVj5Sb2JpbnNvbiBXdTwvRElWPg0KPERJ
Vj48L0RJVj4NCjxESVY+Jm5ic3A7PC9ESVY+

------=_NextPart_5D9DC314_0980F258_4B333236--





--===============0463536382956071433==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0463536382956071433==--




