Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5625585A19
	for <lists+openwrt-devel@lfdr.de>; Thu,  8 Aug 2019 07:54:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:Date:Mime-Version:To:From:References:In-Reply-To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8Jw/OgpKvBHBDDeSgTnuJZPZKOKS79ykHwBJHUCE5lk=; b=UoYBNGzkNN+zfEHxwakdqnlPo
	EgwpPhBz0JL45QARSdbv3ic2L1R88q+h/OCocXsmLKLlVcnQwFuxvoVmAKbuskBvkRXsG6m9fZGWw
	8zTyusn/xiGMvhH91M+oz86zzXec6QRkH5h8TxtE4CQyijUPf0kpC7z74W0zYDAu47AR2RWH1m2fE
	LLzk5sxnOEnF3PS+ZuWaxeMzIUcoXLoJRN2Cho5SkC4/XpnVCiPArFotVqCEbjrD6GBwXDG7/836I
	DlVbzqVAu5BBdMfC9d4hhez5Q32tzjZITpmvDawT2QsrRliofxnJeeg/MzrrWh/Cot4GIZeMwjgq2
	jRwo0ZX/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvbNF-0002px-Bo; Thu, 08 Aug 2019 05:54:05 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvbMy-0002ph-P4
 for openwrt-devel@bombadil.infradead.org; Thu, 08 Aug 2019 05:53:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-ID:Date:
 Content-Transfer-Encoding:Content-Type:Mime-Version:Subject:Cc:To:From:
 References:In-Reply-To:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=IELVC3s9pMFGC2nw9jgABhL+arVAKD8W2T/IB8r0s1Q=; b=BrwyNglxP2b8
 TCfGo0+9YFHXl9i7gFnfCNM/nvumxRELnpU/RWVqdT1wte3K6/78We7FuviwmNxsBtV5a2o8wqmgt
 65XFgFmlAK0S8e/hfmUEmoxzmRHrVtL0hBaYiR39FQ3EaW52cslcNJPky7YGBjCDTQjziI+TG1/hj
 EezuLmJx2AEY+GOmuAGueQ76VlvqEXq1PMeY+A7kgHSdWpPuppEhapYDvDt24tAmusM2SucrwTgXZ
 IhGtI+AJiH57bHA9hadOPiSZQcwRbRe6ByUcxvibD6uj+DdD/rhtHPG5pDJ43N87s3AFUkuwCbl0a
 YFtbuIPOJg4pcGh8Bnv5VA==;
Received: from smtpbgeu1.qq.com ([52.59.177.22])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvbMy-0006r1-8t
 for openwrt-devel@lists.openwrt.org; Thu, 08 Aug 2019 05:53:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1565243579; bh=IELVC3s9pMFGC2nw9jgABhL+arVAKD8W2T/IB8r0s1Q=;
 h=From:To:Subject:Mime-Version:Date:Message-ID;
 b=vgsvKeIFdww1z1Z/VDwykqy/I9IBDgpJYlyU5i8RjKyyh685+jMi7yW9KyDsdlkSN
 5+1oE/GiMP1Te79PdPRY1VxiJj92n8t9YI69/XNSb+Z8IO/mMNyBuUh7Oq7qGoaW1c
 crs8PUsYpzuZaLPiAwy4dPgrLnYGPEpoSnDL82Yk=
X-QQ-FEAT: 322/xMGPkyputU7Quo8WyXqKKmCMs1XVBAFum8fGeZ2lU3y9xV9RMDtqNh0a2
 n12V8dzOU1W66M10IbVPZyGr92npZkawfQCzWYo0ZhyxQGLfNnAR7C6fTR48hJVFY71GFrd
 +wJJIvHfSc05NPfktBWXb0ozWIr4XAVZMiZldHXfMQtjDCJE5MddbCxYOVSeIkRPiqNOOVH
 uhjF9+Wl3sn0vfaxq+2bFTZP2FhdMvQJFi85jy6XqwfBJEk+KlhH3wfDNccV4wQNTceNqcT
 ciA18vIlEBqQP82LCuBqBo2xC+3mgLZ4kCPxdZ6ZJ5IN6e
X-QQ-SSF: 00000000000000F000000000000000Z
X-HAS-ATTACH: no
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 115.205.16.30
In-Reply-To: <008301d54d15$9274ae70$b75e0b50$@adrianschmutzler.de>
References: <1564114882-63441-1-git-send-email-wurobinson@qq.com>	<00a901d5461b$c893d310$59bb7930$@adrianschmutzler.de>
 <tencent_599CEF7667E63EBDE4896D3CC7EBA9D68A05@qq.com>	<00ac01d546cc$1359c2a0$3a0d47e0$@adrianschmutzler.de>	<tencent_CC467618EF234A1AD97E72589FEEAC58F909@qq.com>
 <tencent_75E229CDEA804F6D87F6FEAEA4924D232705@qq.com>
 <008301d54d15$9274ae70$b75e0b50$@adrianschmutzler.de>
X-QQ-STYLE: 
X-QQ-mid: webmail438t1565243578t858784
From: "=?ISO-8859-1?B?Um9iaW5zb24gV3U=?=" <wurobinson@qq.com>
To: "=?ISO-8859-1?B?QWRyaWFuIFNjaG11dHpsZXI=?=" <mail@adrianschmutzler.de>
Mime-Version: 1.0
Date: Thu, 8 Aug 2019 13:52:58 +0800
X-Priority: 3
Message-ID: <tencent_379EAC54F830766EEF454BDED9AE72269E09@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-ReplyHash: 855046772
X-QQ-SENDSIZE: 520
Received: from qq.com (unknown [127.0.0.1]) by smtp.qq.com (ESMTP) with SMTP
 id ; Thu, 08 Aug 2019 13:52:59 +0800 (CST)
Feedback-ID: webmail:qq.com:bgforeign:bgforeign4
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_065348_470381_2433EA5A 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [52.59.177.22 listed in list.dnswl.org]
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.0 T_SPF_HELO_TEMPERROR   SPF: test of HELO record failed (temperror)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wurobinson[at]qq.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support to JS7628
 development board
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
Cc: =?ISO-8859-1?B?b3BlbndydC1kZXZlbA==?= <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============0684838595226111044=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.

--===============0684838595226111044==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_5D4BB8BA_0CEE6C08_39EA0BEB"
Content-Transfer-Encoding: 8Bit

This is a multi-part message in MIME format.

------=_NextPart_5D4BB8BA_0CEE6C08_39EA0BEB
Content-Type: text/plain;
	charset="ISO-8859-1"
Content-Transfer-Encoding: base64

SGksDQpUaGFuayB5b3UgZm9yIHlvdXIgYWR2aWNlcy4gIEkgd2lsbCBzdWJtaXQgcGF0Y2gg
YWdhaW4uIA0KDQoNCkJlc3Qgd2lzaGVzDQoNCg0KUm9iaW5zb24gV3U=

------=_NextPart_5D4BB8BA_0CEE6C08_39EA0BEB
Content-Type: text/html;
	charset="ISO-8859-1"
Content-Transfer-Encoding: base64

PGRpdj5IaSw8L2Rpdj48ZGl2PlRoYW5rIHlvdSBmb3IgeW91ciBhZHZpY2VzLiAmbmJzcDtJ
IHdpbGwgc3VibWl0IHBhdGNoIGFnYWluLiZuYnNwOzwvZGl2PjxkaXY+PGJyPjwvZGl2Pjxk
aXY+PGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6ICZxdW90O2x1Y2lkYSBHcmFuZGUmcXVvdDss
IFZlcmRhbmEsICZxdW90O01pY3Jvc29mdCBZYUhlaSZxdW90OzsiPkJlc3Qgd2lzaGVzPC9k
aXY+PGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6ICZxdW90O2x1Y2lkYSBHcmFuZGUmcXVvdDss
IFZlcmRhbmEsICZxdW90O01pY3Jvc29mdCBZYUhlaSZxdW90OzsiPjxicj48L2Rpdj48ZGl2
IHN0eWxlPSJmb250LWZhbWlseTogJnF1b3Q7bHVjaWRhIEdyYW5kZSZxdW90OywgVmVyZGFu
YSwgJnF1b3Q7TWljcm9zb2Z0IFlhSGVpJnF1b3Q7OyI+Um9iaW5zb24gV3U8L2Rpdj48L2Rp
dj4=

------=_NextPart_5D4BB8BA_0CEE6C08_39EA0BEB--





--===============0684838595226111044==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0684838595226111044==--




