Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D44F2139954
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 Jan 2020 19:52:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:To:From:Message-ID
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+93fmgoKnxO96eU5jT5ldGzxgw2jYfsP9jKwOAxBk4M=; b=bEZgbO3zjWdZDF
	WLDY7+6z+TagW4kvhGEbi7flVSH6xINFgjFFdkX2rSG7pl5TnMhb2TrEvwVqcFn/d47W7On+IWAlY
	2/PNmgJ/H+0ZiDuvBCXVu81o2sQhItVE52VU2tt0B28MXcCyEXW+UYcC7DXRWtv8GJ6tKPmek9D2g
	q5+btVhngSdvYRIZOqZ4UbWmNOlKnTHj7D3iMhQjN+WCf13LLCfZS3Mi3v/Ec65R4hA9U+HykoYxa
	4Mwi9W/3P5UcyK5hlb2F5pyGIZnbfCE10UD8YZeaVwZyiPi8pB6hHIIH77WKHVRkyRjS8kJdYfnVc
	BufYKAw0vovS4cMZ3WCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir4pT-0006Ye-Nh; Mon, 13 Jan 2020 18:52:47 +0000
Received: from korolev.univ-paris7.fr ([2001:660:3301:8000::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir4pN-0006Y6-1a
 for openwrt-devel@lists.openwrt.org; Mon, 13 Jan 2020 18:52:42 +0000
Received: from potemkin.univ-paris7.fr (potemkin.univ-paris7.fr
 [IPv6:2001:660:3301:8000::1:1])
 by korolev.univ-paris7.fr (8.14.4/8.14.4/relay1/82085) with ESMTP id
 00DIqVVF001118
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
 for <openwrt-devel@lists.openwrt.org>; Mon, 13 Jan 2020 19:52:31 +0100
Received: from mailhub.math.univ-paris-diderot.fr
 (mailhub.math.univ-paris-diderot.fr [81.194.30.253])
 by potemkin.univ-paris7.fr (8.14.4/8.14.4/relay2/82085) with ESMTP id
 00DIqTQM006872
 for <openwrt-devel@lists.openwrt.org>; Mon, 13 Jan 2020 19:52:30 +0100
Received: from mailhub.math.univ-paris-diderot.fr (localhost [127.0.0.1])
 by mailhub.math.univ-paris-diderot.fr (Postfix) with ESMTP id 8476827346
 for <openwrt-devel@lists.openwrt.org>; Mon, 13 Jan 2020 19:52:33 +0100 (CET)
X-Virus-Scanned: amavisd-new at math.univ-paris-diderot.fr
Received: from mailhub.math.univ-paris-diderot.fr ([127.0.0.1])
 by mailhub.math.univ-paris-diderot.fr (mailhub.math.univ-paris-diderot.fr
 [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id emtw_r7oMdWn for <openwrt-devel@lists.openwrt.org>;
 Mon, 13 Jan 2020 19:52:32 +0100 (CET)
Received: from pirx.irif.fr (unknown [78.194.40.74])
 (Authenticated sender: jch)
 by mailhub.math.univ-paris-diderot.fr (Postfix) with ESMTPSA id 133A527341
 for <openwrt-devel@lists.openwrt.org>; Mon, 13 Jan 2020 19:52:31 +0100 (CET)
Date: Mon, 13 Jan 2020 19:52:31 +0100
Message-ID: <87wo9vur2o.wl-jch@irif.fr>
From: Juliusz Chroboczek <jch@irif.fr>
To: openwrt-devel@lists.openwrt.org
User-Agent: Wanderlust/2.15.9
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.2.7
 (korolev.univ-paris7.fr [IPv6:2001:660:3301:8000::1:2]);
 Mon, 13 Jan 2020 19:52:31 +0100 (CET)
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.2.7
 (potemkin.univ-paris7.fr [194.254.61.141]);
 Mon, 13 Jan 2020 19:52:30 +0100 (CET)
X-Miltered: at korolev with ID 5E1CBC6F.000 by Joe's j-chkmail (http : //
 j-chkmail dot ensmp dot fr)!
X-Miltered: at potemkin with ID 5E1CBC6D.001 by Joe's j-chkmail (http : //
 j-chkmail dot ensmp dot fr)!
X-j-chkmail-Enveloppe: 5E1CBC6F.000 from
 potemkin.univ-paris7.fr/potemkin.univ-paris7.fr/null/potemkin.univ-paris7.fr/<jch@irif.fr>
X-j-chkmail-Enveloppe: 5E1CBC6D.001 from
 mailhub.math.univ-paris-diderot.fr/mailhub.math.univ-paris-diderot.fr/null/mailhub.math.univ-paris-diderot.fr/<jch@irif.fr>
X-j-chkmail-Score: MSGID : 5E1CBC6F.000 on korolev.univ-paris7.fr : j-chkmail
 score : . : R=. U=. O=. B=0.000 -> S=0.000
X-j-chkmail-Score: MSGID : 5E1CBC6D.001 on potemkin.univ-paris7.fr : j-chkmail
 score : . : R=. U=. O=. B=0.000 -> S=0.000
X-j-chkmail-Status: Ham
X-j-chkmail-Status: Ham
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_105241_355110_21F0BECC 
X-CRM114-Status: UNSURE (   4.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] Set enable_vlan4k by default?
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

I just spent a good few minutes trying to find out why my VLAN setup was
being ignored.  It turned out that I needed to say:

    option enable_vlan4k 1

Is there any good reason why this is not the default setting?

(19.07.0, ath79, switch is rtl8366s.)

-- Juliusz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
