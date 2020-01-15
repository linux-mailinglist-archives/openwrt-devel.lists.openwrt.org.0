Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84DFE13CCE3
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Jan 2020 20:13:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ogQ7MAyAc3QvFhxG4nys1KroTHcS8EAxzCjkiX77TKg=; b=KX1J9jYNr+UWXrBggGeJISyyd
	oin/lXfvhtyQgUEYSjJqu76ONwelYIQ/I26n7kamR/DdyM7vDTFIFNCHPFNp9z5WIhOteRzPUx8CI
	GSkYCWrwAjGKKhD3QLiZFc+vF1vmF0tJw9l7e5XpkU3a+g2LtOnh9NX6X8zkkiquOaFBNEfn7+waa
	sm2qKx/bSgp0h6C4nd8e5DLskpyLhI64kpQKyS+wGcvIX1iDR6sXDC6h9AYPqZ6hDkT9z//5grb86
	1RhInJH74UVm/jKupurIji8rdQVyWFercsTjtO+1KOS1MgI50FqOZnB75SWIIo+M/gbYZDY1qXnzM
	QgeTM5UZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iro66-00026E-3i; Wed, 15 Jan 2020 19:12:58 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iro5y-00023G-N4
 for openwrt-devel@lists.openwrt.org; Wed, 15 Jan 2020 19:12:52 +0000
Received: from [2a04:4540:1401:8c00:fabe:bb99:c5ae:67a0]
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iro5x-0007Fi-82; Wed, 15 Jan 2020 20:12:49 +0100
To: Kyle Copperfield <kmcopper@danwin1210.me>, openwrt-devel@lists.openwrt.org
References: <mailman.9968.1573271025.2486.openwrt-devel@lists.openwrt.org>
From: John Crispin <john@phrozen.org>
Message-ID: <7363a1c5-7d11-249c-6e6b-87b2cebf0df9@phrozen.org>
Date: Wed, 15 Jan 2020 20:12:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <mailman.9968.1573271025.2486.openwrt-devel@lists.openwrt.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_111250_908243_AC770D2E 
X-CRM114-Status: UNSURE (   7.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] hostapd: add dtim_period,
 local_pwr_constraint, spectrum_mgmt_required
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

Merged, thanks !

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
