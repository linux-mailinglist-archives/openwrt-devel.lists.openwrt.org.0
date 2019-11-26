Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B042109CEA
	for <lists+openwrt-devel@lfdr.de>; Tue, 26 Nov 2019 12:21:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lDPkpQV2LRZWPdyjDk1Ovcq4VQyQ5/arbJ6KZJzwbwY=; b=WywZl+kT3RKDmOetVoKVgoAx3
	ULUDgvWiiDdTuwFMvrIthpj1dPphBa8koy916LemrG70z7irySDd4/eYeQVTwV8oug/BVM+esKYS1
	cDQ3h5Af8CPNKIsoy5iRQpzf31COUdPCL9qov4K7ooefGt+lYks5HOrT6cuwfPZDrNuBkA5c/UnIy
	fPq+EOtMfvcyT4oNCtQwNKN0rRz5Cz6nUUkj3HI1KSm8EMlb2PDnzAoXkPIVwfpPDNHWnqqGAwh3p
	+4UkP8JiNZvnPPvK4P8YQUNAT6zJcdFtQwCUPYusZiP8uMgUobOpHiFbgmYjK6Nl9/fSFRiqHUF66
	km/MuI/zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZYuV-0002KO-Fo; Tue, 26 Nov 2019 11:21:35 +0000
Received: from so254-38.mailgun.net ([198.61.254.38])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZYuH-0001ue-9b
 for openwrt-devel@lists.openwrt.org; Tue, 26 Nov 2019 11:21:22 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=gorani.run; q=dns/txt; 
 s=mailo; t=1574767281;
 h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: To:
 Subject: Sender; bh=z9ETIEkZHEcbUaAymbZScpjBJWyFqQzwsZBgcMx6xDo=;
 b=wVabTH2qVcYA+kOB4VZXlataEpU/Zj8C8Y2SyLK9PPcx16kSppEZ994zoh/JiL+Aq7aEYHom
 5ESjlGvGHsbr17CXV0Jx8D8cWgBq4XexXv05eGo0z+nL5kDD/r3gCT9aiV02d3vujwoOICJG
 gtxjtleToHtEkV+mndsnDtkknTA=
X-Mailgun-Sending-Ip: 198.61.254.38
X-Mailgun-Sid: WyI5NGQ3YSIsICJvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnIiwgImNmYmM2YiJd
Received: from [192.168.0.124] (Unknown [219.255.228.122])
 by mxa.mailgun.org with ESMTP id 5ddd0aaf.7fe45d649bc8-smtp-out-n03;
 Tue, 26 Nov 2019 11:21:19 -0000 (UTC)
To: Adrian Schmutzler <mail@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <20191124215301.1424-1-freifunk@adrianschmutzler.de>
 <8fb7aa97-879c-4826-aab5-f089c72d2bc6@gorani.run>
 <033901d5a3af$b9d31380$2d793a80$@adrianschmutzler.de>
From: mans0n <mans0n@gorani.run>
Message-ID: <2025d539-9abf-dad3-7c31-9be36a23ac51@gorani.run>
Date: Tue, 26 Nov 2019 20:21:16 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <033901d5a3af$b9d31380$2d793a80$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_032121_426971_34E4D5CC 
X-CRM114-Status: UNSURE (   7.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [198.61.254.38 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] treewide: remove dts-v1 identifier from
 DTSI files
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

On 19. 11. 26. 1:45 AM, Adrian Schmutzler wrote:
> Based on that, having dts-v1 in the dtsi is discouraged when it's in the dts already (though not restricted by the parser ATM).

I see. So dtc does not really like the use of /dts-v1/ in DTSI files.

Thanks for letting me know. :)

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
