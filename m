Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B8513CCDF
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Jan 2020 20:10:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ogQ7MAyAc3QvFhxG4nys1KroTHcS8EAxzCjkiX77TKg=; b=G/YVZCpPbbSy499395EVDJM4M
	+CzKTzo7Hzf5fb7foq+gTVzXF/GoRtBmJZyZpO9v88LbIWjCdix1mSpQQrumXJ+8vnAGESMyQSphR
	Zq8oTHYAeY9XWNKL/7wqkHK/pjN++keArpnIgj+YKoQBQO4/hk55kJbrPbBO+uCHVL6XLvDqSF8TN
	8hkR0aqQ4zr8Ru7y2w+0AWMQhVKEsCs5ps7Jr7oMIOIBp/kNZv2Z2Qguik/mHcfiI2WTfG9RICnJ6
	XGQVhnZUq7tsTH7crONuNAXkw9zmRLJpT2u5vecDhsawW5iQ0A7aCECwqyI4+C6++H/2zdS3mWnpR
	9LF29+CXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iro3e-0001Sy-7U; Wed, 15 Jan 2020 19:10:26 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iro3P-0001Rz-Rd
 for openwrt-devel@lists.openwrt.org; Wed, 15 Jan 2020 19:10:17 +0000
Received: from [2a04:4540:1401:8c00:fabe:bb99:c5ae:67a0]
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iro3O-00070C-2f; Wed, 15 Jan 2020 20:10:10 +0100
To: Kyle Copperfield <kmcopper@danwin1210.me>, openwrt-devel@lists.openwrt.org
References: <20191109034257.44951-1-kmcopper@danwin1210.me>
 <mailman.9967.1573271025.2486.openwrt-devel@lists.openwrt.org>
From: John Crispin <john@phrozen.org>
Message-ID: <fea870da-3619-2e46-bca7-4e3a7adcf114@phrozen.org>
Date: Wed, 15 Jan 2020 20:10:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <mailman.9967.1573271025.2486.openwrt-devel@lists.openwrt.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_111012_055985_1233D2E4 
X-CRM114-Status: UNSURE (   7.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] hostapd: add wpa_strict_rekey
 support
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
