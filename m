Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6C3E7FC6
	for <lists+openwrt-devel@lfdr.de>; Tue, 29 Oct 2019 06:37:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q66zU4vs4N5tvOsRJ3GYsnUggpiyZfuy6VBK8kKG0x0=; b=nEvFQaLdxV9upH
	GV4xyhsDbIXCfKb+ZZ3tCElM/SZ3eFlkM6GxHPWUTat/WhEY99iwF3+lIHPDnpOa/mulUJDfXOsn7
	cn97oQQsWUCSPROEWc7F/09IlYSyagvIzt9QSb/wGgqddSlPMFWA/OKuAwK5KW/4EbfkJbNMhQFe1
	ycF4+IjJklLeluO29Mr4lB1mleJ+q3txnPb0VTjS9jVNgLjdyrW59hnRGkEJFh9XUGao52TqdLZkz
	9WI/E+ytFo8wD4TkE73pGKm2Kaj/0F4E8I50jk45pwcV1rwVFjMLVbMtP1paLcOimzQeSw94oeQIo
	G45FNRw4BJJrTtKxEdFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPKCH-000315-I4; Tue, 29 Oct 2019 05:37:37 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPKC8-00030Y-N4
 for openwrt-devel@lists.openwrt.org; Tue, 29 Oct 2019 05:37:30 +0000
Received: from p5dcfbe82.dip0.t-ipconnect.de ([93.207.190.130]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>) id 1iPKC4-0002CC-TV
 for openwrt-devel@lists.openwrt.org; Tue, 29 Oct 2019 06:37:25 +0100
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: John Crispin <john@phrozen.org>
Message-ID: <772e4320-c84d-dbb0-6243-d2fb150d2401@phrozen.org>
Date: Tue, 29 Oct 2019 06:37:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_223728_913514_F599A55C 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] v5.4 as next kernel
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
should we use v5.4 as our next kernel ?
	John

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
