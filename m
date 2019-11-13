Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4816EFB7D2
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 19:43:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QpsBDK3Y807z8HP0VKMupOMuZOqMcfmO3xbZW+2JNIg=; b=rwh/bDY9Cv0+ee
	xn2d9T9vqb0HhUjQnE1qLrJsOH3Xzt3SNYgbAPG47A/Cdtx00Oyx86/KJBxgSBJTtw0v/nZfk7wY+
	zPr+f6piEk6WwWcqckCHKj+Ne8cGvUsVeiGbhXuzg5ZIXNImehofIxNdZmGnnPn44sUDjdkZ6O+G2
	RSHXgOa4qDl0Uh56/L+YpxEkiGONfOAhtFuq1Y+mZlFPb6E3IfCvmPM2+DS/PqfBgIROF8fziIdU0
	8NkTVidFbk0hR0pORH3x05RING6C4433cq7CZvX3Q+eK9RvsnSNU/7bBFwbTHPYjZz9CP0OtXi6Eq
	F215Rlq9IrJoHj2zCYRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUxbf-0004fb-7s; Wed, 13 Nov 2019 18:43:07 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUxbX-0004ez-Cn
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 18:43:00 +0000
Received: by mail-lj1-x232.google.com with SMTP id d22so3736827lji.8
 for <openwrt-devel@lists.openwrt.org>; Wed, 13 Nov 2019 10:42:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=sj1lJ5UKowQHpAq95SzbAP2oWDJiJgznx9N3YU8vRtc=;
 b=Tfl7ehdRFaTJhVhtUNS8rx6FNB290uaeZ90N6+44RgkTaBAIZu71RvzxjvDK5mMJBw
 l3ALc1Zu8eEsEyUnjuMogT8MDgQzWu+zyvpGpscE2EsZaW+ECTF1K4BOnKfdDRodEaYh
 ywIVOFYd/f+oQD85BBMLuX0lBPSU6ySgxeEzddbf/Kg3zeS8y3NVYmuU4N6vxM8yQpRV
 fJaTa4qrMgM5UQGdAhEyF9O5QRGvnTMRu9HTc5UOOWV8phea4h6koDaRquydyJa3vr+6
 pDxjbPpGtj6zZQTRmYa1haoET0au16n/DADUB2s0xeDsNqRsEDkjugvddjKjwKfwv7o5
 YFtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sj1lJ5UKowQHpAq95SzbAP2oWDJiJgznx9N3YU8vRtc=;
 b=ogLgJ0+J4lSILvxruGWCzHCbXfe2AmHCvCx/iN9vJLyhGmi60DTXyz/2ctZK2fDOL2
 NsXHxC20BawL/f3W/ToN9yvLgB+PnaVGaA8ETX2Bwq2zMY+VqROHhrJ9uA5LF1dyZ/nT
 CaDTiNV9A8dpqvLVnw4HIM3jHDVcA+z9gBeaTnEIh8yd7J4j6G5fPEspJ0kL+j8IhaAR
 Y3C/VPD9zESNYUXoti3oN+Wfq83eN1Y4iZHWU/Ml+TbUbjDc5AdQbw5eaqMcuRlCEpOr
 Xl1kMGgxXNDK9tvjuy3y4fSgIW0gkzrI/8HHYSaeBF17nEQyqsCLABJm/SrclsF3sQ9v
 LCXg==
X-Gm-Message-State: APjAAAV6qESkNJnrUnjASRWTZaoW+EJ+PCS97jCUjv+LGlkobi7IkBqW
 kCofiYUgfxe/b+vM2l8RDfpssfSJ
X-Google-Smtp-Source: APXvYqzQAiScUolpEQzMaRIDSw3Kd0jyQXoS1k1U5UAQrgnbeqO+T2GhPf2xZDjYfHsJMB3dJak4cA==
X-Received: by 2002:a05:651c:303:: with SMTP id
 a3mr3492330ljp.55.1573670577399; 
 Wed, 13 Nov 2019 10:42:57 -0800 (PST)
Received: from localhost
 (p200300F667094BAC70AFF7D6C7E48803.dip0.t-ipconnect.de.
 [2003:f6:6709:4bac:70af:f7d6:c7e4:8803])
 by smtp.gmail.com with ESMTPSA id q16sm1499405lfm.87.2019.11.13.10.42.56
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 Nov 2019 10:42:57 -0800 (PST)
To: openwrt-devel@lists.openwrt.org
References: <a1c02db1-b5ae-dc9f-a3ac-aba2e1df9b01@gmail.com>
 <e6966e565cc0b2e13fbbcbf6ef8115cc9bd619da.camel@brenken.org>
From: e9hack <e9hack@gmail.com>
Message-ID: <ee9e1acb-7327-9ace-3137-acbcf891d566@gmail.com>
Date: Wed, 13 Nov 2019 19:42:54 +0100
User-Agent: Thunderbird
MIME-Version: 1.0
In-Reply-To: <e6966e565cc0b2e13fbbcbf6ef8115cc9bd619da.camel@brenken.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_104259_457296_C2373EBE 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:232 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (e9hack[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] uhttpd/luci/rpcd is broken?
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

Am 13.11.2019 um 13:53 schrieb Dirk Brenken:
> On Wed, 2019-11-13 at 13:44 +0100, e9hack wrote:
>> Hi,
>>
>> it looks like that uhttpd/luci/rpcd is broken again. After login in
>> the web interface, the main status page times out and shows this
>> error message:
>>
>> RPCError: RPC call to luci.ddns/get_services_status failed with error
>> -32000: Object not found 
>>   at handleCallReply (
>> https://wlan-dsl8.lan/luci-static/resources/rpc.js?v=git-19.317.29469-8da8f38:12:3
>> )
> 
> Seems to be a file permission issue, try:
> 
> chmod +x /usr/libexec/rpcd/luci.ddns
> /etc/init.d/rpcd restart

Yes, this does fix it.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
