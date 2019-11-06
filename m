Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B407F1592
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 12:59:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XtKB+T3kLZYAjoSZtD/Hl7YITSo5JbW5+fMz/tn2xVo=; b=jsgotVHeFTEAZ1isXfncK2RAD
	CbkNBgGqFK7zG5iwXBJSklA0FFmq07reGfG/cS4LHShuJwZASLcABaFQuBKLKa0rDs/hG7rZ7zaGW
	fLfz4WV9ioG/SAN6iJQpSrWuyJH03lH+M/bPAQKbYZcD0cQ3GvdcD/qU1ogVYQkxq2FB0UoHeTUis
	6e0ZZWVLUEOC9c3s/gr8wXvRo/P5vnfnefdr8QhfKk6Z7mftBdndC+093nuH2eFnSM2PrHgbRhyko
	skjndja0JaCHfs0mvtXFskqmCjJvHh3d0DwJtcJBQFsP4SBUXAtM+emBzxYVEndLnHAyPXaXAPCd4
	fYTJHNgOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSJxu-00083A-L8; Wed, 06 Nov 2019 11:59:10 +0000
Received: from mail.tintel.eu ([2001:41d0:8:1644:0:ff:fe5c:6a54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSJxl-00081u-H0
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 11:59:03 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 6C43F455DAF0
 for <openwrt-devel@lists.openwrt.org>; Wed,  6 Nov 2019 12:58:58 +0100 (CET)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id kfGlKtTBX9oR for <openwrt-devel@lists.openwrt.org>;
 Wed,  6 Nov 2019 12:58:57 +0100 (CET)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id EA3E3469DA83
 for <openwrt-devel@lists.openwrt.org>; Wed,  6 Nov 2019 12:58:56 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu EA3E3469DA83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1573041537;
 bh=inYF7hVqq1GrQzYdc8H6PC6CxXMZz6eO25zikgyu8Xk=;
 h=To:From:Message-ID:Date:MIME-Version;
 b=rIOqQ0aua2I5NOMPCJ8oBHVyZgsWA6u6IT82RF9oqyBJ5oMLEttxgT0c1GgZiJMZ1
 mg0Jqrj65RWD0cSutGE0EO2Qg5O/ssin2ApFn86nQc6s/DYp+QVh15HObNNnG7T9o2
 jFwvhI1YfIlNJkMNV6mcVAhjii4f+2LTNBB7heeQ=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id o-nxsNSbZQAj for <openwrt-devel@lists.openwrt.org>;
 Wed,  6 Nov 2019 12:58:56 +0100 (CET)
Received: from sylvester.nomad.adlevio.net
 (ptr-7svjs18pj4s7xqdfrre.18120a2.ip6.access.telenet.be
 [IPv6:2a02:1811:406:dc00:e1ef:959a:f4dd:df4a])
 (Authenticated sender: stijn@tintel.eu)
 by mail.tintel.eu (Postfix) with ESMTPSA id A76DC455DAF0
 for <openwrt-devel@lists.openwrt.org>; Wed,  6 Nov 2019 12:58:55 +0100 (CET)
To: openwrt-devel@lists.openwrt.org
References: <e7e7d7ce-8e9c-8bd8-5491-7e2f5f4ba74d@linux-ipv6.be>
From: Stijn Tintel <stijn@linux-ipv6.be>
Message-ID: <05b50591-6dcd-dda1-d623-e4d91a300265@linux-ipv6.be>
Date: Wed, 6 Nov 2019 12:58:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <e7e7d7ce-8e9c-8bd8-5491-7e2f5f4ba74d@linux-ipv6.be>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_035901_863667_8CF3B3D0 
X-CRM114-Status: UNSURE (   8.67  )
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
Subject: Re: [OpenWrt-Devel] Wiki going down for maintenance
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

On 6/11/2019 12:51, Stijn Tintel wrote:
> Hi,
>
> As the server that is hosting the OpenWrt.org wiki is running out of 
> disk space, we will take it down to resize it.
>
And it's back.

Stijn


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
