Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B043CFFAB9
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 Nov 2019 17:18:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LEaRNIkY3geDLSx+NV3VS4DiGW4wua297XrzUkxBqPI=; b=On1DOik57hbPw/
	6r2vnAGAxVlipm3UsPMRWwken6aZXLekeP7HaM0KQQxP90LihHmDzbxWJeXr2PHYl1ISBRqlOfDSF
	KrYrgLeLbDlLWW+JQJoJbNDOYIGH45JMRjc8za3m+wnIL2QYft5qUSvD9wm4ePnUj10l2BO04X1uK
	unoFRdtFR2pXz4VRioKfIxz/ZJe+aoevZ1hB+uttWfgsRGmbSG5fPha+1jKf/5tYYO3bZCEnL8yGG
	XI7Lx1H5Zqdi/1MWaq0ION+p1rkedQLzkU7S8QZBKxi7VWl2tHsqOubXasz7bXab2PreNKvq7t+yE
	dxSNiqL86CcW3I2KrG7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWNFd-0005TH-Jf; Sun, 17 Nov 2019 16:18:13 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWNFY-0005Su-BL
 for openwrt-devel@lists.openwrt.org; Sun, 17 Nov 2019 16:18:09 +0000
Received: by mail-wm1-x32f.google.com with SMTP id b17so16052843wmj.2
 for <openwrt-devel@lists.openwrt.org>; Sun, 17 Nov 2019 08:18:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=/nZQ20SEIfpPvohK+aWsMEy0qinyOr5kuS/cGuFXy+g=;
 b=EyWMUaNRptci2OCx7Q/hB1jeWbUWpseGfYQyT6NO4UpAuCF/F9T3aFj5P0wu6Srb3U
 1NMUL3iJIqpKxOU4SYxCBS8sGU4vyryO5O5My+74SW8nBTvcXd4Y5Y0QyjYwrJyrcmZE
 F9WUEYviD3h7Jh/l922/1WU4oJlLdIfE0j21IxwoqxugA3oFcg4MVDf1wy8VS8yJnQQ9
 tq4QCazNgTSHbKiFoU178D0XUjH2P+Wg61mkWSrWmbt34g9XIraGTkUc+gQ9M0WgYGfX
 ekJEX1NQQzi2MGvsvwt+MAmvs6IWgLHd2X42lXksymonT2lVVDosOFT7pNKjF49Qg1yb
 Ks6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/nZQ20SEIfpPvohK+aWsMEy0qinyOr5kuS/cGuFXy+g=;
 b=DUR+AnXaKSOcL3phlp/83YDIfBrnhnnB07HP6LA1IyYh+E9KspbW4f96V+1zj4+/25
 wHZcLvnB0WiCcQ/GDMHyD4yB2XCIq5WdBCVf9Po1r7+ypteHK1TBXqlJhBM6iU+3dkcI
 EteBY8Q20XLf1SdOPdXsNbwiq65JJctLYiemr/cqldF+YSFRMZ5jJcDAtpjOhRlqLXte
 vjXP7/vGA8nmvVbwcewKo14AIPIFJfonBzpM6GX7VC1MV4H03CqJLLxNAGh3/cNkPkVt
 HeS/87qZwxfiwPW4kyVf5fuuOc/lLAIdD8W6aLWFPK2mAALf47WtMnlTFn08OLFLmP8i
 xKfw==
X-Gm-Message-State: APjAAAXz9Xz+B1+2Efu81ggUJHNtIYRpyY4Q0orrZbRDcZUDeQ1HK2x6
 XslP4i723BAkkEr3ngKcq4Vf3Ulh
X-Google-Smtp-Source: APXvYqxxFDLjnDv6IW+7Vmbt3OTaCwDN8a+eaqI+tuz731kWGm3f3DxbGoC2SRZKBc12t2fIvHzSCQ==
X-Received: by 2002:a7b:cb59:: with SMTP id v25mr25064259wmj.159.1574007486170; 
 Sun, 17 Nov 2019 08:18:06 -0800 (PST)
Received: from localhost
 (p200300F667216FAC452DED3A0AA65243.dip0.t-ipconnect.de.
 [2003:f6:6721:6fac:452d:ed3a:aa6:5243])
 by smtp.gmail.com with ESMTPSA id l4sm16698808wme.4.2019.11.17.08.18.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 17 Nov 2019 08:18:05 -0800 (PST)
To: Daniel Golle <daniel@makrotopia.org>
References: <5bc298cc-cd3d-0cdf-9772-36fc86cb1680@gmail.com>
 <20191116162706.GA1274@makrotopia.org>
From: e9hack <e9hack@gmail.com>
Message-ID: <b03a5cb4-2d89-91b3-5a89-13963b14edbe@gmail.com>
Date: Sun, 17 Nov 2019 17:18:04 +0100
User-Agent: Thunderbird
MIME-Version: 1.0
In-Reply-To: <20191116162706.GA1274@makrotopia.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_081808_388695_B04E62A2 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (e9hack[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Wifi is broken
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Am 16.11.2019 um 17:27 schrieb Daniel Golle:
> Hi,
> 
> On Sat, Nov 16, 2019 at 09:17:08AM +0100, e9hack wrote:
>> Hi,
>>
>> this commit
>>
>> commit	000b7687bc50be5b0f1161f4bf8ceb85c495c395
>> mac80211: restore mac80211_interface_cleanup()
>>
>> breaks wifi on my tp-link archer C7 router. After update, only the 5G wifi will be activated. The 2.4G wifi doesn't start. I try to recover from this by shuting down and restart wifi by executing 'wifi down; sleep 30; wifi &'. Afterwards, wifi doesn't start anymore. I modify mac80211.sh to get some more log entries:
> 
> I've reverted that commit and applied a more sophisticated fix instead.
> Please retest and report if that works better.

After your fix, both networks does start again. 

Thanks!

Regards,
Hartmut   

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
