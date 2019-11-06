Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08EBEF156E
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 12:51:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sIWZP2BWeKIZ/jMcrjt2Xn3gn9zvSRIXKhMJmY+QOg0=; b=l8BmhzlvCzNne+
	2Gmsp+g/lgGmuKdg1tC6sidA3Oe4QuqGdCxYYJoZyoPhXUfAv4sw/uBVe5XXJgJSboKzoSiR4lCfI
	cwsKBKIFemiSzclDG95GPBBojA8mATR7NYy2J4Ce7Yyh9kiNmTgGEudGB51GxKom8eM6JnYeJv3zj
	VYAC/R6eFtJReiyTBk9kIQladzmjP8jdF4tPMtiC96IzJYzeQR5G4bPQHlQQy2AObTEivTdqpq75U
	Xh12uJOYnCj6T6Ky6JzJuI2FJX4x4+O/nfZSFqUyZpo7ez9b9agHzNl+6fIMfOEfOmMHNyTBQZukS
	tdomEPE3Bbh8YQHH7IfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSJqV-0005RC-Bq; Wed, 06 Nov 2019 11:51:31 +0000
Received: from mail.tintel.eu ([2001:41d0:8:1644:0:ff:fe5c:6a54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSJqM-0005QN-7q
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 11:51:24 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 10586455DAF0
 for <openwrt-devel@lists.openwrt.org>; Wed,  6 Nov 2019 12:51:16 +0100 (CET)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id V9T-xCv63SMs for <openwrt-devel@lists.openwrt.org>;
 Wed,  6 Nov 2019 12:51:13 +0100 (CET)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id E4841469DA83
 for <openwrt-devel@lists.openwrt.org>; Wed,  6 Nov 2019 12:51:12 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu E4841469DA83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1573041073;
 bh=eIj1W7e0OxJCoJ6XSsV3O9TlVcgzBula0X4Q6739Q3k=;
 h=To:From:Message-ID:Date:MIME-Version;
 b=uXuyU/C4ViC4tWv1lvZfDaPTtMkuQUK4R+oWsDjip9mCxMYGw7EUbSe7+XmJCFRNl
 vDNlO9utTH1lAnOuCB+QtcH0uz1vuzZK9h9k4wvLXBvEHSl0eYkfbSu3wTkdZkWg2R
 3sa2wRNglQIf8bMs39B1J/fL9VsaVa3JF2BMpNd4=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id IJz3QEmMhLHj for <openwrt-devel@lists.openwrt.org>;
 Wed,  6 Nov 2019 12:51:12 +0100 (CET)
Received: from sylvester.nomad.adlevio.net
 (ptr-7svjs18pj4s7xqdfrre.18120a2.ip6.access.telenet.be
 [IPv6:2a02:1811:406:dc00:e1ef:959a:f4dd:df4a])
 (Authenticated sender: stijn@lenio.be)
 by mail.tintel.eu (Postfix) with ESMTPSA id C0983455DAF0
 for <openwrt-devel@lists.openwrt.org>; Wed,  6 Nov 2019 12:51:11 +0100 (CET)
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Stijn Tintel <stijn@linux-ipv6.be>
Message-ID: <e7e7d7ce-8e9c-8bd8-5491-7e2f5f4ba74d@linux-ipv6.be>
Date: Wed, 6 Nov 2019 12:51:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_035122_628951_58A65929 
X-CRM114-Status: UNSURE (   7.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] Wiki going down for maintenance
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

As the server that is hosting the OpenWrt.org wiki is running out of 
disk space, we will take it down to resize it.

Stijn


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
