Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4391E87A8
	for <lists+openwrt-devel@lfdr.de>; Tue, 29 Oct 2019 13:00:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/2IdJeBvUjA13Qh9TS25eebmCB1Az/vPJNMG3p+rqyM=; b=c+9qwxllyY4tZPIuBSmKSiGu5
	aDnZn64uthi1LCd61Y97FCyVq0BubyfASRU72I6qJroZQGanrWabNQ6dAFWdNxjjC+8r4V0P9y04x
	Epk8HaBeVV+U5N1KRERO5aAHvSOMnSW9gB2+bdz/lgvg7s47zRVahVoWZKGr8kjJRd/4Zk/Uh9qyI
	UGdbKAjKg7wshTdz1GkTJZzOKve9v/sHOmUurfNTYUduxY1+W7zDO0AciQZisAW12J/ZFu+KHB3+9
	tK33MTdM7qbaTMXUrIErf6sI/d/A8BcufYXsiTsRHSFk1U5TENTHoAYvQ9K2TrOE7N6d1f0ZVHcqj
	ujJ3gQmKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPQB7-0008B4-Jb; Tue, 29 Oct 2019 12:00:49 +0000
Received: from mail.tintel.eu ([54.36.12.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPQAy-00089d-AY
 for openwrt-devel@lists.openwrt.org; Tue, 29 Oct 2019 12:00:42 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 9A345453E842
 for <openwrt-devel@lists.openwrt.org>; Tue, 29 Oct 2019 13:00:32 +0100 (CET)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id p4Q9rha1YiW4 for <openwrt-devel@lists.openwrt.org>;
 Tue, 29 Oct 2019 13:00:31 +0100 (CET)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 2F94A423416C
 for <openwrt-devel@lists.openwrt.org>; Tue, 29 Oct 2019 13:00:31 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu 2F94A423416C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1572350431;
 bh=1+Ldusu6EtGPKelJxORenxX+UW8NGrowYHBXyqLzBd8=;
 h=To:From:Message-ID:Date:MIME-Version;
 b=SHON/gY0tmh8rgJzGlQOyIIbQ47ZBjpW0rYZKtaBcs5d4vJNVXkCasdggUaQVgMvM
 r3zc0/sni4RGMYJph2+0vc12oHfkvjtSacCvVUkBy2d7pcE8wKkRuzK+KQ1uqxcqVU
 EqBuwpcOA7ogsLZZnCvrJpf3Sb7cy3QaQBXWOJ5s=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id f2s7W0elKNDs for <openwrt-devel@lists.openwrt.org>;
 Tue, 29 Oct 2019 13:00:30 +0100 (CET)
Received: from sylvester.nomad.adlevio.net (unknown [212.3.228.181])
 (Authenticated sender: stijn@tintel.eu)
 by mail.tintel.eu (Postfix) with ESMTPSA id 7E033453E842
 for <openwrt-devel@lists.openwrt.org>; Tue, 29 Oct 2019 13:00:30 +0100 (CET)
To: openwrt-devel@lists.openwrt.org
References: <772e4320-c84d-dbb0-6243-d2fb150d2401@phrozen.org>
From: Stijn Tintel <stijn@linux-ipv6.be>
Message-ID: <2c9c02ee-db44-e5ce-a6ea-8d0fba20f5cd@linux-ipv6.be>
Date: Tue, 29 Oct 2019 13:00:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <772e4320-c84d-dbb0-6243-d2fb150d2401@phrozen.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_050040_661502_AFEAEE03 
X-CRM114-Status: UNSURE (   7.11  )
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
Subject: Re: [OpenWrt-Devel] v5.4 as next kernel
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

On 29/10/2019 06:37, John Crispin wrote:
> Hi,
> should we use v5.4 as our next kernel ?
>
As 5.4 is planned to be the next longterm kernel, with projected EOL 
12/2021 [0], this seems like a good idea. ACK from me.

Stijn

[0] https://www.kernel.org/category/releases.html


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
