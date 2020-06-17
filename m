Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE191FCAFD
	for <lists+openwrt-devel@lfdr.de>; Wed, 17 Jun 2020 12:37:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OLb4PniOXDOBl8qeRhOYU7v+02qlA0egeAxQAHDYwoc=; b=K7wOVh7iOrRNQt
	yQ50tiZz/QolsEFjFK9q1UKd019FVHgwwjnZdiqwZzpJHHtFduf6NJr7TtvOBrm1dN2IKtB/dRzgl
	7FbzvjPiJtw4/YMW5NsxUlWsI26xy8tQVknlJc5BVM70jLzyu4+4zK1hSrs/dyTnoZA13zy0hp5c7
	Sg5RmfxR6GWE5Bq6kLH+gg/ixjgNfpJ4xzfNVb2cDdMJjZ6AFrCUQq6+b6CQnpfKjAGak/MUGpijR
	FwirL9CXhKjrH7nkIKPE2+FSYi0W/GRtck+mLv8/9kW0/drcyDfrCYsS1+7Uvaf4Ry5rSthuJ4g9L
	F/uSWZeQrOBPkqzs/s+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlVRH-0002gk-Jv; Wed, 17 Jun 2020 10:37:03 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlVR7-0002gE-LQ
 for openwrt-devel@lists.openwrt.org; Wed, 17 Jun 2020 10:36:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1592390207;
 bh=8SQeEkDryLo0HydI/8BRwwBe3p1wKvHDBaIfmePUi74=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=TqN+qEBD8mhhOIS5cYOsyzlL3ZgS+UfKHrYbx30mnE+IA3nCXcgTXQe3EixGdmx2Q
 6BlfpzwyL+F44kFYrC6+JyE5i/jacTA/rvLOB3qTn74uQu7NMSN3bgERKps/oXt7eG
 XCwor2E+BUNEj1j983dBFR455DiEtu2dRxKp1rrQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [10.11.12.3] ([134.76.241.253]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MkHQX-1j0s8U252f-00khpI; Wed, 17
 Jun 2020 12:36:47 +0200
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.14\))
From: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <3523633f9906f23b980f260be84bce9e@dev.tdt.de>
Date: Wed, 17 Jun 2020 12:36:45 +0200
Message-Id: <1D9EF033-4C42-4F7D-BED5-A33793FF4D44@gmx.de>
References: <20200616082613.892-1-fe@dev.tdt.de>
 <004301d643d1$0eccb190$2c6614b0$@adrianschmutzler.de>
 <3523633f9906f23b980f260be84bce9e@dev.tdt.de>
To: Florian Eckert <fe@dev.tdt.de>
X-Mailer: Apple Mail (2.3445.104.14)
X-Provags-ID: V03:K1:EiUFJVybSpzp+846Uo6c7qiO7hOxNQW4RgoYZbHD9cTX8v0o/jH
 ROv8OMhCuw6QY8CCA2NCJGfDcBHJf7MOTHFw05sbjXsrcSSvjmNEVkbpnFrqrikkiNdSgaj
 rWdxqqQlStODrGL0XUwBwzzi0qilf/vLBJT01jtwFNgbnbrXec34rHDMwi7OTlctEchlmjW
 m+nz3ijJ/JbFBZIPtgpgg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:uEPwn+i9o2I=:2iQxJFyySPXZCvEwO6W7OO
 ytb6UWAHqzlTcgOp0/ilPTqsOgeY+oh5bhAD0W/7Hxo3MysO/GPmK60J8XoSxqZzqmWYuuEk3
 ypa8Ef3jwESCMyoaTnVFql5UfnUPtkgdQB0g+lCg+JuhK8dcx8BxQ/JfU4MZuBdcxq7V1PqEF
 x1eEqDHqrjkRBVT5W3kVvWB8iP1Qns1tJNS9OgA6rXTpvN2PtGRz9LUE6aHF/STwf+kWH5Jk9
 GWN6MSGjkED9Kbd1lRYxKjdcwCDN52VOt82L1aUVIXdJXUgBJFGNJxs51DEmgfmrJUTf8YHrc
 jV5W/twiYYPP+7ju2jxtHTbOAj0OI+T1Rjwr52N/VCxE/NrqZ+Y6FMoleXphds/EA1jdJembI
 UTH1S28bX8hftM9kNatinuzRU76TznoBBZrtxXemxDhmpYIDX9tYfz06mzv5grNUoJ1R4HAIO
 s7ahkzf4j9C8kT81K+fERMtl7ww/MqKuxl2i5CKu6ek9ZUdBgs7UcfR1uR6G/yalxLyN25m6t
 WQ0BAeVA1d7+AScNzo8YgggS35LfE355ixLEPwNv/SSNVUgIDVcNqv5hBprxs89srxXcjDSw2
 4L4iDLfJi8D1g004r7EPP9iGQLA2USTUaY2Nu6gny44Y6KBagep0oqKLFbyyycuI1/Btmo/Xh
 WlHxcfPgICOKWcGmOSxu+lRZA9OdbkEGRp+OOKIvlAOvUa6W1na02+oQcP/e/hsgND/t7HXBh
 spWMepKdYcjGDyxuSNEwaXnLw2E3Ocw+yMTPDAOAW6bULKMwi/vmvbw2ZmkC6geSVcW6tnT/d
 LkDdxR//7Gi/TNOnuDKPk6/4BugzqmdSxE/Sal3lDNxPPnU2dmV0kq88oiQ+VCDwM38rfNWTr
 IoJ+gwC6QskFovjyqhC1EQkOKOTBudRzhNc0MXXz0dh8+Ze7OOOrDMV48oV1mzHQb0vgq0PTF
 EMB3T2/0YAAgqdu7lWxUAaf8nKgAK2i8RvUqaCdQjEbvd/7+t1DS1ZXfnxrAVHrlJ4TOOZhBt
 5A30YkUZ1Pub1jrvvnyCyrlL4EgNGZmxGIStBDDXrT8LhW8ek7T5ZCNqP2qo8qwfKvu5D/5YX
 zJAXtRGnOKrLdBNNFuqfZqJTzccP4tQkFj5rB7uUhHMcwYOVL+3hpxtINpmT1am4Z47NPrBAa
 SzhelJhk1oAOjb3dCkayps70SC+pMmyslEeGfIvHsQbDVtvkfDlZvpqSsTrvFFDmrdlq4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_033654_033476_6CFF4EB9 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [moeller0[at]gmx.de]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.21 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [moeller0[at]gmx.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] lantiq: add dsl line_state mapping
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
Cc: openwrt-devel@lists.openwrt.org,
 Adrian Schmutzler <mail@adrianschmutzler.de>, Eckert.Florian@googlemail.com,
 dev@kresin.me, john@phrozen.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Florian,


> On Jun 16, 2020, at 14:18, Florian Eckert <fe@dev.tdt.de> wrote:
> 
> Hi Adrian,
> 
> thanks for your comment
> 
>>> -		"0xd00")	s="resync" ;;
>>> -		"0x3c0")	s="short init entry" ;;
>>> -		"")		s="not running daemon"; ls="0xfff" ;;
>>> -		*)		s="unknown" ;;
>>> +		"0x0")		s="not initialized"
>>> +				n=1 ;;
>> Wouldn't it be more user-friendly to just use the decimal number
>> equivalent of the hex code?
> 
> I've been thinking the same thing.
> But then I have a problem when I want to display the values over time (collectd/gravana).
> From my point of view the distances are then too small or too large it does not give equal gradations.

	I guess lantiq (or rather maxlinear nowadays) might introduce new hex codes into existing gaps which will cause a distruption of the nice monotonic order oc the enumerating decimals you went for. Is there no other data type in graphana that is ordered yet not scaled?

Best Regards
	Sebastian


> 
>>> -		"0x1000000")	s="test" ;;
> 
> Especially the test value jumps out of line there. I think this is unlikely and could be neglected,
> but I would like to have a linear gradation.
> 
> 
>>> -		"")		s="not running daemon"; ls="0xfff" ;;
>>> -		*)		s="unknown" ;;
>> Empty and error could be modelled with negative numbers then.
> 
> We can still do that. So we have for "" and * the value -1 and -2.
> 
> Best regards
> 
> Florian
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
