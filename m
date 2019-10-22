Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F40BAE0DAC
	for <lists+openwrt-devel@lfdr.de>; Tue, 22 Oct 2019 23:09:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1H0cTnIl/PFZL1rssiENuv4gI1nxUm37mSploopIxAc=; b=JA19NArEOU8xpO
	eu0w2HNn/R559fpxQ/Q270AC9RbUMKA680b98RJ/iTT4WhIaf3YFXOzHtjZvpxdpzNUq3YYb5kkVE
	4BzUDq+uw/YhY4nx/16c1ososiw1rcTTEY1iCAO23gWpYry8XFDlzoVGSCcHAskFRKSPgBJYa2jc8
	aFyyoAFaQ1rAC3WS42cV+VfDWIne6H/eTrk578lAtfwA893cBhLv86vMJ/+/0Y5eGQ+XCBnXtbBZj
	YonhITtmbMJZyLARrujhE83xnBVTSQz/b0WWQFIW/uXzAJ8s5rBotLHKRWIrRGvYRTuXkmt7dupzj
	0quWA+2kwf5OHkE+1AIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN1PZ-0005K7-Jc; Tue, 22 Oct 2019 21:09:49 +0000
Received: from l5m.de ([84.200.74.160])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN1PR-0005JI-L9
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 21:09:43 +0000
Received: from localhost (localhost [127.0.0.1])
 by l5m.de (Postfix) with ESMTP id 874AC107E43;
 Tue, 22 Oct 2019 23:09:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 andreas-ziegler.de; h=content-transfer-encoding:content-language
 :content-type:content-type:in-reply-to:mime-version:date:date
 :message-id:from:from:references:subject:subject:received
 :received; s=default; t=1571778575; bh=ETSgT5tkI5Vk5cPFz7dE62K+2
 PrvaqR9hXQpIBC1w4g=; b=UB2wyk4Git2XNIiHbheQVU3/mmueS89ztG9fgGq82
 SWyHvj0hjsglEu5sJQC+fYPvb/x6A8ObcjuVL33SBkNkaTvDTxbw+L+JQzXrs9sq
 LGgBXmxOfXaaX4AOh5/ByzyENnmjGIy2tyUzfbnInx9j+sioAnPq0jkNX3rI64Mj
 p0=
X-Virus-Scanned: Debian amavisd-new at l5m.de
Received: from l5m.de ([127.0.0.1])
 by localhost (l5m.de [127.0.0.1]) (amavisd-new, port 10024) with ESMTP
 id qp8MbKtT8_ov; Tue, 22 Oct 2019 23:09:35 +0200 (CEST)
Received: from [IPv6:2a01:c23:c046:9100:e100:1ba4:940e:ef6e] (unknown
 [IPv6:2a01:c23:c046:9100:e100:1ba4:940e:ef6e])
 by l5m.de (Postfix) with ESMTPSA id C75201047CA;
 Tue, 22 Oct 2019 23:09:35 +0200 (CEST)
To: Adrian Schmutzler <mail@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <20191022204429.608380-1-dev@andreas-ziegler.de>
 <002e01d5891c$14b5b540$3e211fc0$@adrianschmutzler.de>
From: Andreas Ziegler <dev@andreas-ziegler.de>
Openpgp: preference=signencrypt
Autocrypt: addr=dev@andreas-ziegler.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <ad3c46d8-2322-14f5-9b3d-7355a57d3aa6@andreas-ziegler.de>
Date: Tue, 22 Oct 2019 23:09:35 +0200
MIME-Version: 1.0
In-Reply-To: <002e01d5891c$14b5b540$3e211fc0$@adrianschmutzler.de>
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_140941_994710_EABA8BC9 
X-CRM114-Status: UNSURE (   3.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] ar71xx: add model detection for UniFi
 AC-LR
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

Hi Adrian,

> Since this is ar71xx, where vendor_model scheme is not used at all, I would prefer using "ubnt-unifiac-lr" for consistency.

i don't mind.
Do i need to send a V2 for such a small change? Maybe this can be done
if it gets merged?

Kr,
Andreas

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
